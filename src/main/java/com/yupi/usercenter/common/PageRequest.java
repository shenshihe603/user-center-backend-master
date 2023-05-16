package com.yupi.usercenter.common;

/**
 * @author CSJ
 * @version 1.0
 * @decription
 * @createTime 2023/5/15 星期一 22:03
 */

import lombok.Data;

@Data
public class PageRequest {

    /**
     * 当前页号
     */
    private long current = 1;

    /**
     * 页面大小
     */
    private long pageSize = 10;

    /**
     * 排序字段
     */
    private String sortField;

}

