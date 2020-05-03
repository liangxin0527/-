package com.liangxin.qlmall_portal.controller;

import com.liangxin.qlmall_portal.bean.Comment;
import com.liangxin.qlmall_portal.bean.Order;
import com.liangxin.qlmall_portal.bean.ov.CommentPageResult;
import com.liangxin.qlmall_portal.commons.exception.LoginException;
import com.liangxin.qlmall_portal.commons.utils.FastDFSClient;
import com.liangxin.qlmall_portal.commons.utils.GeneralResultInfo;
import com.liangxin.qlmall_portal.service.CommentService;
import com.liangxin.qlmall_portal.sytem.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/comment")
public class CommentController {

    @Autowired
    private CommentService commentService;

    Integer id;
    //查询评论
    @PostMapping("/selectAll")
    public CommentPageResult selectAll(Integer currentPage, Integer limit, Integer details_id){
        CommentPageResult info= commentService.findByPageComment(currentPage,limit,details_id);
        return info;
    }
    //添加评论
    @PostMapping("/connect")
    public GeneralResultInfo connent(Comment comment,HttpSession session) throws LoginException {
        try {
            User user = (User) session.getAttribute("user");
            commentService.insertComment(comment,user);
            id=comment.getCommentId();
        }catch (Exception e){
            throw new LoginException("评论失败");
        }

        return new GeneralResultInfo().success();
    }
    //是否购买
    @PostMapping("/ispurchase")
    public GeneralResultInfo ispurchase(Integer detailsId,HttpSession session) throws LoginException {
        User user = (User) session.getAttribute("user");
        List<Order> order=commentService.ispurchase(user.getUserId(),detailsId);
        if (CollectionUtils.isEmpty(order))
            throw new LoginException("没有评论");

        return new GeneralResultInfo().success();
    }
    //上传评论的图片
    @PostMapping("/uploadImage")
     public GeneralResultInfo uploadImage(Integer details_id, MultipartFile  file, HttpSession session) throws Exception {
        //判断文件是否是图片
       BufferedImage image = ImageIO.read(file.getInputStream());
        if (image==null)
            throw new LoginException("文件类型不符合，请上传图片类型");

        try {
            //保存文件
            String path = FastDFSClient.saveFile(file);
            User user = (User) session.getAttribute("user");
            commentService.updateImage(user.getId(),details_id,path,id);
        } catch (IOException e) {
            throw new LoginException("上传图片失败");
        }
        return new GeneralResultInfo().success();
    }

}
