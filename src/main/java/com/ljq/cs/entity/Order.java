package com.ljq.cs.entity;

import java.io.Serializable;

/**
 * @description: 订单实体类
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/12/14
 */
public class Order implements Serializable {

    private static final long serialVersionUID = 9019382430591936391L;

    private int id;   //  id ,主键
    private int uid;   //  用户 id ,外键
    private int cid;   //  商品 id ,外键
    private int stoid;  // 店铺id
    private int sid;   //  购物车 id ; 0: 表示该订单属于用户直接下单，并非来自购物车(默认)
    private int ccount;   //  商品数量
    private double totalamount;   //  总金额
    private int pid;   //  支付方式 id ,外键
    private int ifpay;   //  是否支付，1: 未支付(默认),0: 已支付
    private String remarks;   //  备注信息
    private int ostatus;   //  订单提交状态,1: 未提交(默认)，0: 已提交
    private String sendtime;   //  发货时间

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

    public int getStoid() {
        return stoid;
    }

    public void setStoid(int stoid) {
        this.stoid = stoid;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
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

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getIfpay() {
        return ifpay;
    }

    public void setIfpay(int ifpay) {
        this.ifpay = ifpay;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public int getOstatus() {
        return ostatus;
    }

    public void setOstatus(int ostatus) {
        this.ostatus = ostatus;
    }

    public String getSendtime() {
        return sendtime;
    }

    public void setSendtime(String sendtime) {
        this.sendtime = sendtime;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", uid=" + uid +
                ", cid=" + cid +
                ", stoid=" + stoid +
                ", sid=" + sid +
                ", ccount=" + ccount +
                ", totalamount=" + totalamount +
                ", pid=" + pid +
                ", ifpay=" + ifpay +
                ", remarks='" + remarks + '\'' +
                ", ostatus=" + ostatus +
                ", sendtime='" + sendtime + '\'' +
                '}';
    }
}
