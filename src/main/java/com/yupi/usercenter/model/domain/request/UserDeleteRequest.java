package com.yupi.usercenter.model.domain.request;

/**
 * @author CSJ
 * @version 1.0
 * @decription
 * @createTime 2023/5/15 星期一 22:02
 */

import lombok.Data;

import java.io.Serializable;

/**
 * 删除
 */
@Data
public class UserDeleteRequest implements Serializable {

    /**
     * id
     */
    private Long id;

    private static final long serialVersionUID = 1L;
}
