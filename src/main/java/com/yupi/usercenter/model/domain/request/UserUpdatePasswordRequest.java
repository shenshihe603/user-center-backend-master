package com.yupi.usercenter.model.domain.request;

import lombok.Data;

import java.io.Serializable;

/**
 * @author CSJ
 * @version 1.0
 * @decription
 * @createTime 2023/5/15 星期一 22:05
 */

@Data
public class UserUpdatePasswordRequest implements Serializable {

    private static final long serialVersionUID = -5996345129538944393L;

    /**
     * 原密码
     */
    private String userPassword;

    /**
     * 新密码
     */
    private String newPassword;
}

