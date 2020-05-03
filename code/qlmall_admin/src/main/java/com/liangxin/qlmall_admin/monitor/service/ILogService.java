package com.liangxin.qlmall_admin.monitor.service;



import com.fasterxml.jackson.core.JsonProcessingException;
import com.liangxin.qlmall_admin.commons.entity.Page;
import com.liangxin.qlmall_admin.commons.utils.PageUtil;
import com.liangxin.qlmall_admin.monitor.entity.Log;
import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.scheduling.annotation.Async;

/**
 * @author NKW
 */
public interface ILogService {


    /**
     * 异步保存操作日志
     *
     * @param point 切点
     * @param log   日志
     * @throws JsonProcessingException 异常
     */
    @Async("febsAsyncThreadPool")
    void saveLog(ProceedingJoinPoint point, Log log) throws JsonProcessingException;

    PageUtil findLogs(Page page);

    void deleteById(Integer id);

    void deleteAllByIds(String[] logIds);
}
