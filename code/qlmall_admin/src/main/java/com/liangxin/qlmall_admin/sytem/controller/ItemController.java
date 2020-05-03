package com.liangxin.qlmall_admin.sytem.controller;

import com.liangxin.qlmall_admin.commons.annotation.Log;
import com.liangxin.qlmall_admin.commons.entity.FebsResponse;
import com.liangxin.qlmall_admin.commons.entity.Page;
import com.liangxin.qlmall_admin.commons.exception.FebsException;
import com.liangxin.qlmall_admin.commons.utils.FastDFSClient;
import com.liangxin.qlmall_admin.commons.utils.PageUtil;
import com.liangxin.qlmall_admin.sytem.pojo.*;
import com.liangxin.qlmall_admin.sytem.service.BigAdService;
import com.liangxin.qlmall_admin.sytem.service.IItemService;
import com.liangxin.qlmall_admin.sytem.service.SmallADService;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.elasticsearch.core.ElasticsearchTemplate;
import org.springframework.data.elasticsearch.core.query.IndexQuery;
import org.springframework.data.elasticsearch.core.query.IndexQueryBuilder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.sql.Time;
import java.util.Arrays;
import java.util.Date;

@RestController
@Slf4j
@RequestMapping("/item")
public class ItemController {

    @Autowired
    private IItemService itemService;
    @Autowired
    private ElasticsearchTemplate elasticsearchTemplate;
    @Autowired
    private BigAdService bigAdService;
    @Autowired
    private SmallADService smallADService;


/*
 *
 * @author Lbaci
 * @date
 * @param
 * @return
 */
    @RequestMapping("/list")
    public PageUtil list(Page page){
        PageUtil pageUtil=itemService.findItemAll(page);
        return pageUtil;
    }

    @RequestMapping("/smallad")
    public PageUtil findsmallad(Page page){
        PageUtil pageUtil=smallADService.findAllAd(page);
        return pageUtil;
    }
    @RequestMapping("/bigad")
    public PageUtil findbigad(Page page){
        PageUtil pageUtil=bigAdService.findAllAd(page);
        return pageUtil;
    }

    //删除
    @Log("删除商品")
    @GetMapping("/delete/{id}")
    @RequiresPermissions("item:delete")
    public FebsResponse delete(@PathVariable("id") String id) throws FebsException {
        try{
           this.itemService.deleteById(id.split(","));
            String[] split = id.split(",");
            for (String s : split) {

                //this.elasticsearchTemplate.delete();
            }
        }catch (Exception e){
            throw new FebsException("删除失败");
        }

        return new FebsResponse().success();
    }

    //修改状态
    @Log("修改商品状态")
    @PostMapping("/updateStatus")
    @RequiresPermissions("item:update")
    public FebsResponse updateStatus(String itemId,boolean flag) throws FebsException {
        try {
            this.itemService.updateStatus(itemId,flag);
        }catch (Exception e){
            throw new FebsException("修改状态失败");
        }
        return new FebsResponse().success();
    }

    //修改多个商品状态
    @Log("修改商品状态")
    @PostMapping("/updateStatsAll/{itemId}/{flag}")
    @RequiresPermissions("item:update")
    public FebsResponse updateStatsAll(@PathVariable("itemId") Integer[] itemId,@PathVariable("flag") boolean flag) throws FebsException {
        try {
            this.itemService.updateStatsAll(itemId,flag);
        }catch (Exception e){
            throw new FebsException("修改多个商品状态失败");
        }
        return new FebsResponse().success();
    }


    //修改大广告位状态
    @Log("修改商品状态")
    @PostMapping("/updateAdStatus/{itemId}/{flag}")
    @RequiresPermissions("item:update")
    public FebsResponse updateStatsAd(@PathVariable("itemId") Integer[] itemId,@PathVariable("flag") boolean flag) throws FebsException {
        try {
            this.bigAdService.updateStatsAll(itemId,flag);
        }catch (Exception e){
            throw new FebsException("修改多个商品状态失败");
        }
        return new FebsResponse().success();
    }
//updateSmallADStatsAll

    //修改大广告位状态
    @Log("修改商品状态")
    @PostMapping("/updateSmallADStatsAll/{itemId}/{flag}")
    @RequiresPermissions("item:update")
    public FebsResponse updateSmallADStatsAll(@PathVariable("itemId") Integer[] itemId,@PathVariable("flag") boolean flag) throws FebsException {
        try {
            this.smallADService.updateStatsAll(itemId,flag);
        }catch (Exception e){
            throw new FebsException("修改多个商品状态失败");
        }
        return new FebsResponse().success();
    }
    //修改商品
   // @Log("修改商品")
    @PostMapping("/update")
    @RequiresPermissions("item:update")
    public FebsResponse update(Item item) throws FebsException {
        try{

            itemService.update(item);
        }catch (Exception e){
            throw new FebsException("修改商品失败");
        }
        return new FebsResponse().success();
    }
    /*
     *
     * @author Lbaci
     * 添加商品和文件上传
     */
    @RequestMapping("uplaodItem")
    @Log("上传商品信息")
    public FebsResponse addItemAndUploadFile(MultipartFile file) throws IOException {
        String url="http://192.168.197.136:8888/";
      if (file!=null){
          String[] strings = FastDFSClient.uploadFile(file.getInputStream(), System.currentTimeMillis()+file.getOriginalFilename());

          for (int i = 0; i <strings.length ; i++) {
              if (i<strings.length-1){
                  url+=strings[i]+"/";
              }else{
                  url+=strings[i];
              }
              System.out.println("结果："+strings[i]);
          }
          return new FebsResponse().success().data(url);
      }else{
          return new FebsResponse().fail();
      }
    }


    @RequestMapping("/uploadadsmall")
    public FebsResponse uploadSmallAd(MultipartFile file) throws IOException {
        String url="http://192.168.197.136:8888/";
        if (file!=null){
            String[] strings = FastDFSClient.uploadFile(file.getInputStream(), System.currentTimeMillis()+file.getOriginalFilename());

            for (int i = 0; i <strings.length ; i++) {
                if (i<strings.length-1){
                    url+=strings[i]+"/";
                }else{
                    url+=strings[i];
                }
                System.out.println("结果："+strings[i]);
            }
            SmallAd bigAd = new SmallAd();
            bigAd.setPath(url);
            bigAd.setStatus("1");
            int res=    smallADService.addAd(bigAd);
            return new FebsResponse().success();
        }else{
            return new FebsResponse().fail();
        }
    }

    @RequestMapping("/uploadad")
    public FebsResponse uploadAd(MultipartFile file) throws IOException {
        String url="http://192.168.197.136:8888/";
        if (file!=null){
            String[] strings = FastDFSClient.uploadFile(file.getInputStream(), System.currentTimeMillis()+file.getOriginalFilename());

            for (int i = 0; i <strings.length ; i++) {
                if (i<strings.length-1){
                    url+=strings[i]+"/";
                }else{
                    url+=strings[i];
                }
                System.out.println("结果："+strings[i]);
            }
            BigAd bigAd = new BigAd();
            bigAd.setPath(url);
            bigAd.setStatus("1");
         int res=    bigAdService.addAd(bigAd);
            return new FebsResponse().success();
        }else{
            return new FebsResponse().fail();
        }
    }
    /*
     *
     * @author Lbaci
     * @date
     * @param添加商品信息
     * @return
     */
    @RequestMapping("additem")
    @ResponseBody
    //Integer itemCid, String itemTitle, Double itmePrice, String itemImage,Integer itemStates, String itemDetailsNews,String  ids ,Integer itemSales
    public FebsResponse addItem(Item item){
        System.out.println(item);
        String ids = item.getIds();
        String[] split = ids.split("@");
        //补齐数据
       item.setItemImage(split[0]);
        item.setItemCreatime(new Date());

        //补齐商品详情表
        Details details = new Details();
        details.setItemDetailsNews(item.getItemDetailsNews());
        details.setItemDetailsPrice(item.getItemPrice());
        details.setItemDetailsTitle(item.getItemTitle());
        details.setItemDetailsCount(1000);
        ItemSmall itemSmall = new ItemSmall();
        ItemBig itemBig = new ItemBig();
        int resItem= itemService.addItem(item,details,split,itemSmall,itemBig);
        return new FebsResponse().success();
    }
}
