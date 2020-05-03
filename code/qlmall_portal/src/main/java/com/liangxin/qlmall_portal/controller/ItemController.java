package com.liangxin.qlmall_portal.controller;


import com.github.pagehelper.PageInfo;
import com.liangxin.qlmall_portal.bean.BigAd;
import com.liangxin.qlmall_portal.bean.Category;
import com.liangxin.qlmall_portal.bean.Item;
import com.liangxin.qlmall_portal.bean.SmallAd;
import com.liangxin.qlmall_portal.bean.ov.Page;
import com.liangxin.qlmall_portal.bean.ov.ShowAllDetails;

import com.liangxin.qlmall_portal.commons.utils.RandomListUtils;
import com.liangxin.qlmall_portal.service.CategoryService;
import com.liangxin.qlmall_portal.service.ItemService;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.fetch.subphase.highlight.HighlightBuilder;
import org.elasticsearch.search.fetch.subphase.highlight.HighlightField;
import org.elasticsearch.search.sort.SortBuilders;
import org.elasticsearch.search.sort.SortOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.elasticsearch.core.ElasticsearchTemplate;
import org.springframework.data.elasticsearch.core.SearchResultMapper;
import org.springframework.data.elasticsearch.core.aggregation.AggregatedPage;
import org.springframework.data.elasticsearch.core.aggregation.impl.AggregatedPageImpl;
import org.springframework.data.elasticsearch.core.query.NativeSearchQuery;
import org.springframework.data.elasticsearch.core.query.NativeSearchQueryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class ItemController {

    @Autowired
    private ItemService itemService;

    @Autowired
    RandomListUtils randomListUtils;
    @Autowired
    private CategoryService categoryService;
    @Autowired
    ElasticsearchTemplate elasticsearchTemplate;


    //显示详情页的信息
    @RequestMapping("/details/{item_id}")
    public String details(@PathVariable("item_id")
                                  Integer item_id, Model model) {
        if (StringUtils.isEmpty(item_id)) {
            return "redirect:/index";
        }
        ShowAllDetails showAllDetails = itemService.selectAllDetailsAndSmallAndBig(item_id);
        List<Item> items = randomListUtils.hobbyAndrecommend();
        List<Item> itemList = randomListUtils.randomItem();
        model.addAttribute("showAllDetails", showAllDetails);
        model.addAttribute("items", items);
        model.addAttribute("itemList", itemList);
        return "proDetail";
    }

    //Ajax显示详情页的信息
    @RequestMapping("/Ajaxdetails")
    @ResponseBody
    public ShowAllDetails Ajaxdetails(Integer item_id) {
        ShowAllDetails showAllDetails = itemService.selectAllDetailsAndSmallAndBig(item_id);
        return showAllDetails;
    }

    //点击分类查询商品集合
    @RequestMapping("/findByCatId")
    public String findByCatId(@RequestParam(value = "cid", required = false) Integer cid,
                              @RequestParam(value = "currentPage", required = false) Integer currentPage,
                              Model model) {
        if (cid > 9 || StringUtils.isEmpty(cid)) {
            cid = 1;
        }
        if (currentPage == null || currentPage <= 0) currentPage = 1;
        Integer pageSize = 9;
        //查询分类名称
        Category category = categoryService.findCatByCid(cid);
        System.out.println(category);
        model.addAttribute("category", category);
        Page pageInfo = itemService.SelectAllByCid(cid, currentPage, pageSize);
        model.addAttribute("pageInfo", pageInfo);

        return "findByCat";
    }

    //搜索
    @RequestMapping("/search/selectAll")
    public String search(Integer currentPage, String searchname, String sort, Model model) {
        Pageable pageable = null;
        if (currentPage == null) {
            pageable = PageRequest.of(0, 10);
        } else {
            pageable = PageRequest.of(currentPage - 1, 10);
        }

        //设置高亮
        HighlightBuilder.Field hf = new HighlightBuilder.Field("itemTitle");
        NativeSearchQuery query = new NativeSearchQueryBuilder()
                .withQuery(QueryBuilders.boolQuery()
                        .must(QueryBuilders.matchQuery("itemTitle", searchname)))
                .withPageable(pageable)
                .withSort(SortBuilders.fieldSort("itemPrice").order(SortOrder.ASC))
                .withHighlightFields(hf)
                .build();


        AggregatedPage<Item> page = this.elasticsearchTemplate.queryForPage(query, Item.class, new SearchResultMapper() {
            @Override
            public <T> AggregatedPage<T> mapResults(SearchResponse searchResponse, Class<T> aClass, Pageable pageable) {
                SearchHit[] hits = searchResponse.getHits().getHits();
                List<T> list = new ArrayList<>();
                for (SearchHit hit : hits) {
                    Map<String, Object> resultMap = hit.getSourceAsMap();
                    Map<String, HighlightField> hMap = hit.getHighlightFields();
                    list.add((T) crateItem(resultMap, hMap));
                }
                AggregatedPage<T> result = new AggregatedPageImpl<T>(list, pageable, searchResponse.getHits().getTotalHits());
                return result;
            }


            public <T> T mapSearchHit(SearchHit searchHit, Class<T> aClass) {
                return null;
            }
        });

        List<Item> list = page.getContent();

        PageInfo<Item> pageInfo = new PageInfo<>(list);
        Page page1 = new com.liangxin.qlmall_portal.bean.ov.Page();
        page1.setList(pageInfo.getList());
        pageInfo.setPageNum(page.getPageable().getPageNumber() + 1);
        pageInfo.setPageSize(page.getTotalPages());
        page1.setPageInfo(pageInfo);
        model.addAttribute("pageInfo", page1);
        return "search";
    }

    //index
    @GetMapping(value = {"/", "/index"})
    public String index(Model model) {

        List<Item> randomItem = randomListUtils.randomItem();
        List<Item> hobbyAndrecommend = randomListUtils.hobbyAndrecommend();
        List<BigAd> list = itemService.findALLAd();
        List<SmallAd> res = itemService.findALLAdSm();
        model.addAttribute("badsm", res);
        list.stream().forEach(name -> System.out.println(name.getPath()));
        model.addAttribute("bad", list);
        model.addAttribute("randomItem", randomItem);
        model.addAttribute("hobbyAndrecommend", hobbyAndrecommend);
        return "index";
    }

    private Item crateItem(Map<String, Object> resultMap, Map<String, HighlightField> hMap) {
        Item item = new Item();
        if (hMap.get("itemTitle") != null) {
            item.setItemTitle(hMap.get("itemTitle").fragments()[0].toString());
        }
        if (resultMap.get("itemPrice") != null) {
            item.setItemPrice(Double.parseDouble(resultMap.get("itemPrice").toString()));
        }
        if (resultMap.get("id") != null) {
            item.setId(Integer.parseInt(resultMap.get("id").toString()));
        }
        if (resultMap.get("itemImage") != null) {
            item.setItemImage(resultMap.get("itemImage").toString());
        }
        if (resultMap.get("itemCid") != null) {
            item.setItemCid(Integer.parseInt(resultMap.get("itemCid").toString()));
        }

        return item;
    }


}
