package com.liangxin.qlmall_portal.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import com.liangxin.qlmall_portal.bean.*;
import com.liangxin.qlmall_portal.bean.ov.Page;
import com.liangxin.qlmall_portal.bean.ov.ShowAllDetails;
import com.liangxin.qlmall_portal.mapper.*;
import com.liangxin.qlmall_portal.service.ItemService;
import org.checkerframework.checker.units.qual.A;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ItemServiceImpl implements ItemService {

    @Autowired
    private ItemMapper itemMapper;

    @Autowired
    private DetailsMapper detailsMapper;

    @Autowired
    private ItemSmallMapper itemSmallMapper;

    @Autowired
    private ItemBigMapper itemBigMapper;

    @Autowired

    private BigAdMapper bigAdMapper;

    @Autowired
    private SmallAdMapper smallAdMapper;

    @Override
    public Page SelectAllByCid(Integer cid, Integer currentPage, Integer pageSize) {
        Page page=new Page();

        PageHelper.startPage(currentPage,pageSize);
        List<Item> items = itemMapper.paintSelectAllByCid(cid);
        PageInfo<Item> pageInfo=new PageInfo<>(items);
        page.setList(pageInfo.getList());
        page.setPageInfo(pageInfo);
        return page;
    }

    //查询详情页的所有信息
    @Override
    public ShowAllDetails selectAllDetailsAndSmallAndBig(Integer item_id) {
        ShowAllDetails showAllDetails=new ShowAllDetails();

        //根据Item_id查询jd_details表
        Details details = detailsMapper.selectByPrimaryKey(item_id);
        //根据Details的id查询Small的图片
        List<ItemSmall> itemSmalls=itemSmallMapper.selectAllByDetails_id(details.getItemDetailsId());
        //根据Details的id查询Big的图片
        List<ItemBig> itemBigs=itemBigMapper.selectAllByDetails_id(details.getItemDetailsId());
        //封装数据
        showAllDetails.setDetails(details);
        showAllDetails.setSmallList(itemSmalls);
        showAllDetails.setBigList(itemBigs);
        return showAllDetails;
    }



    @Override
    @Cacheable(cacheNames="book",key = "'bookInfo_'+#currentPage+#pageSize")
    public List<Item> findListByCid(Integer currentPage, Integer pageSize) {
        System.out.println(currentPage+"____"+pageSize);
        currentPage+=1;
        List<Item> itemList=itemMapper.selectAll(currentPage,pageSize);
        return itemList;
    }














    @Override
    public Page searchSelectAll(Integer currentPage,Integer pageSize, String name, Integer sort) {
        Page page=new Page();

        PageHelper.startPage(currentPage,pageSize);
        List<Item> items=itemMapper.searchSelectAll(name,sort);
        PageInfo<Item> pageInfo=new PageInfo<>(items);
        page.setList(pageInfo.getList());
        page.setPageInfo(pageInfo);
        return page;
    }

    @Override
    public List<Item> selectALl() {
        return itemMapper.selectAll2();
    }

    @Override
    public Long selectconct() {
        return itemMapper.selectconct();
    }

    @Override
    public List<SmallAd> findALLAdSm() {
        return smallAdMapper.findADByStatus();
    }

    @Override
    public List<BigAd> findALLAd() {


        return bigAdMapper.findAdByStatus();
    }
}
