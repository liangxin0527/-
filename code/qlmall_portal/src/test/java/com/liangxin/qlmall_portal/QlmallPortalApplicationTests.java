package com.liangxin.qlmall_portal;

import com.liangxin.qlmall_portal.bean.Item;
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
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.elasticsearch.core.ElasticsearchTemplate;
import org.springframework.data.elasticsearch.core.SearchResultMapper;
import org.springframework.data.elasticsearch.core.aggregation.AggregatedPage;
import org.springframework.data.elasticsearch.core.aggregation.impl.AggregatedPageImpl;
import org.springframework.data.elasticsearch.core.query.IndexQuery;
import org.springframework.data.elasticsearch.core.query.IndexQueryBuilder;
import org.springframework.data.elasticsearch.core.query.NativeSearchQuery;
import org.springframework.data.elasticsearch.core.query.NativeSearchQueryBuilder;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@RunWith(SpringRunner.class)
@SpringBootTest
public class QlmallPortalApplicationTests {
    @Autowired
    private ItemService itemService;

    @Autowired
    RandomListUtils randomListUtils;
    @Autowired
    private ElasticsearchTemplate elasticsearchTemplate;

    @Test
    public void addItemTeoEs() {

        List<Item> list = itemService.selectALl();
        System.out.println(list);
    }


    @Test
    public void addItemToEs() {
        this.elasticsearchTemplate.createIndex(Item.class);
        this.elasticsearchTemplate.putMapping(Item.class);

        List<Item> list = itemService.selectALl();
        for (Item item : list) {
            IndexQuery build = new IndexQueryBuilder().withId(item.getId().toString()).withObject(item).build();
            this.elasticsearchTemplate.index(build);
        }
    }

    @Test
    public void testa() {

        Pageable pageable = PageRequest.of(0, 10);
        //设置高亮
        HighlightBuilder.Field hf = new HighlightBuilder.Field("itemTitle");
        hf.preTags("<span style='color:red'>");
        hf.postTags("</span>");
        NativeSearchQuery query = new NativeSearchQueryBuilder()
                .withQuery(QueryBuilders.boolQuery()
                        .must(QueryBuilders.matchQuery("itemTitle", "新西兰")))
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
        for (Item item : list) {
            System.out.println(item);
        }
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
