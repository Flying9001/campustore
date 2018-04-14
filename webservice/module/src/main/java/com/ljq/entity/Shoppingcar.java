package com.ljq.entity;

import java.io.Serializable;

/**
 * @description: 购物车实体类
 * @author: lujunqiang
 * @date: 2017/12/14
 */
public class Shoppingcar implements Serializable {

    private static final long serialVersionUID = 906921151325313921L;

    private int id;   // id ,主键
    private int uid;   //  用户 id ,外键
    private int cid;   //  商品 id ,外键
    private int ccount;   //  商品数量
    private double totalamount;   //  总金额

    /**
     *  setter and getter
     * */
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getCcount() {
        return ccount;
    }

    public void setCcount(int ccount) {
        this.ccount = ccount;
    }

    public double getTotalamount() {
        return totalamount;
    }

    public void setTotalamount(double totalamount) {
        this.totalamount = totalamount;
    }

    @Override
    public String toString() {
        return "Shoppingcar{" +
                "id=" + id +
                ", uid=" + uid +
                ", cid=" + cid +
                ", ccount=" + ccount +
                ", totalamount=" + totalamount +
                '}';
    }
}
