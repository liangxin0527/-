package com.liangxin.qlmall_admin.sytem.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.liangxin.qlmall_admin.commons.entity.Page;
import com.liangxin.qlmall_admin.commons.utils.PageUtil;
import com.liangxin.qlmall_admin.sytem.mapper.DetailsMapper;
import com.liangxin.qlmall_admin.sytem.mapper.ItemBigMapper;
import com.liangxin.qlmall_admin.sytem.mapper.ItemMapper;
import com.liangxin.qlmall_admin.sytem.mapper.ItemSmallMapper;
import com.liangxin.qlmall_admin.sytem.pojo.Details;
import com.liangxin.qlmall_admin.sytem.pojo.ItemBig;
import com.liangxin.qlmall_admin.sytem.pojo.ItemSmall;
import com.liangxin.qlmall_admin.sytem.service.IItemService;
import com.liangxin.qlmall_admin.sytem.pojo.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.elasticsearch.core.ElasticsearchTemplate;
import org.springframework.data.elasticsearch.core.query.IndexQuery;
import org.springframework.data.elasticsearch.core.query.IndexQueryBuilder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(propagation = Propagation.SUPPORTS, rollbackFor = Exception.class)
public class ItemServiceImpl implements IItemService {

    @Autowired
    private ItemMapper itemMapper;
    @Autowired
    private DetailsMapper detailsMapper;
    @Autowired
    private ItemBigMapper itemBigMapper;
    @Autowired
    private ItemSmallMapper itemSmallMapper;
    @Autowired
    private ElasticsearchTemplate elasticsearchTemplate;

    @Override
    public PageUtil findItemAll(Page page) {
        PageUtil pageUtil = new PageUtil();

        PageHelper.startPage(page.getPage(), page.getLimit());

        List<Item> items = itemMapper.selectAll(page);

        PageInfo<Item> pageInfo = new PageInfo<>(items);
        pageUtil.setData(pageInfo.getList());
        pageUtil.setCount(pageInfo.getTotal());
        return pageUtil;
    }

    @Override
    public void deleteById(String[] split) {
        for (String s : split) {
            this.elasticsearchTemplate.delete(Item.class,s);
        }

        itemMapper.deleteByPrimaryKey(split);
    }

    @Override
    public Item findById(Integer id) {
        return itemMapper.selectByPrimaryKey(id);
    }

    @Override
    public void updateStatus(String itemId, boolean flag) {
        Item item = itemMapper.selectByPrimaryKey(Integer.parseInt(itemId));
        item.setItemStats(Integer.parseInt(Boolean.toString(flag)));
        IndexQuery query = new IndexQueryBuilder().withId(item.getId().toString()).withObject(item).build();
        this.elasticsearchTemplate.index(query);
        itemMapper.updateStatus(itemId, flag);
    }

    @Override
    public void updateStatsAll(Integer[] itemId, boolean flag) {
        itemMapper.updateStatsAll(itemId, flag);
    }

    @Override
    public void update(Item item) {
        IndexQuery query = new IndexQueryBuilder().withId(item.getId().toString()).withObject(item).build();
        this.elasticsearchTemplate.index(query);
        itemMapper.updateByPrimaryKey(item);
    }

    /*
     *
     * @author Lbaci
     * @添加商品信息
     */
    @Transactional
    @Override
    public int addItem(Item item, Details details, String[] split, ItemSmall itemSmall2, ItemBig itemBig2) {
        //保存商品
        Integer res=null;
        res= itemMapper.saveItem(item);
        IndexQuery query = new IndexQueryBuilder().withId(item.getId().toString()).withObject(item).build();
        this.elasticsearchTemplate.index(query);
        //保存详情
        details.setItemDetailsItemid(item.getId());
        res+= detailsMapper.saveDetail(details);
        //保存大图
        for (int i = 0; i < split.length; i++) {
            ItemBig itemBig = new ItemBig();
            itemBig.setItemBigImage(split[i]);
            itemBig.setItemDetailsId(details.getItemDetailsId());
           res+= itemBigMapper.saveItemBig(itemBig);
        }


        //保存小图
        for (int i = 0; i < split.length-1; i++) {
            ItemSmall itemSmall = new ItemSmall();
            itemSmall.setItemDetailsId(details.getItemDetailsId());
            itemSmall.setItemSmallImage(split[i]);
            itemSmall.setItemSmallAlt("提示");
            res+= itemSmallMapper.saveItemSmall(itemSmall);
        }
        return res;

    }
}
