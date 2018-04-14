package com.ljq.cs.entity;

import java.io.Serializable;

/**
 * @description: 支付方式实体类
 * @author: lujunqiang
 * @date: 2017/12/14
 */
public class Payment implements Serializable {

    private static final long serialVersionUID = 4988387023160829026L;

    private int id;  // id ,主键
    private String pay;   // 支付方式

    /**
     *  setter and getter
     * */
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPay() {
        return pay;
    }

    public void setPay(String pay) {
        this.pay = pay;
    }

    @Override
    public String toString() {
        return "Payment{" +
                "id=" + id +
                ", pay='" + pay + '\'' +
                '}';
    }
}
