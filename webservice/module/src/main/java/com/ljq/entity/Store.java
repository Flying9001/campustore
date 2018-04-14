package com.ljq.entity;

import java.io.Serializable;

/**
 * @description: 店铺信息实体类
 * @author: lujunqiang
 * @date: 2017/12/14
 */
public class Store implements Serializable {

    private static final long serialVersionUID = -8529474762394428548L;

    private int id;   // id,主键
    private String sname;   // 店铺名称
    private String address;   // 店铺地址
    private String storelogo;   // 店铺 logo
    private String storephoto;   // 店铺门面照片
    private int sstatus;   //  店铺状态,1: 正常; 0: 异常
    private String sowner;   //  店铺负责人
    private String ownertel;   //  负责人电话
    private String ownerid;   //  负责人身份证
    private String owneremail;   //  负责人邮箱
    private String account;   //  店铺管理帐号
    private String passcode;   //  店铺管理密码
    private String storetel;   //  店铺电话
    private String registertime;   //  店铺注册时间
    private String tips;   //  店铺说明

    /**
     *  setter and getter
     * */
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getStorelogo() {
        return storelogo;
    }

    public void setStorelogo(String storelogo) {
        this.storelogo = storelogo;
    }

    public String getStorephoto() {
        return storephoto;
    }

    public void setStorephoto(String storephoto) {
        this.storephoto = storephoto;
    }

    public int getSstatus() {
        return sstatus;
    }

    public void setSstatus(int sstatus) {
        this.sstatus = sstatus;
    }

    public String getSowner() {
        return sowner;
    }

    public void setSowner(String sowner) {
        this.sowner = sowner;
    }

    public String getOwnertel() {
        return ownertel;
    }

    public void setOwnertel(String ownertel) {
        this.ownertel = ownertel;
    }

    public String getOwnerid() {
        return ownerid;
    }

    public void setOwnerid(String ownerid) {
        this.ownerid = ownerid;
    }

    public String getOwneremail() {
        return owneremail;
    }

    public void setOwneremail(String owneremail) {
        this.owneremail = owneremail;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPasscode() {
        return passcode;
    }

    public void setPasscode(String passcode) {
        this.passcode = passcode;
    }

    public String getStoretel() {
        return storetel;
    }

    public void setStoretel(String storetel) {
        this.storetel = storetel;
    }

    public String getRegistertime() {
        return registertime;
    }

    public void setRegistertime(String registertime) {
        this.registertime = registertime;
    }

    public String getTips() {
        return tips;
    }

    public void setTips(String tips) {
        this.tips = tips;
    }

    @Override
    public String toString() {
        return "Store{" +
                "id=" + id +
                ", sname='" + sname + '\'' +
                ", address='" + address + '\'' +
                ", storelogo='" + storelogo + '\'' +
                ", storephoto='" + storephoto + '\'' +
                ", sstatus=" + sstatus +
                ", sowner='" + sowner + '\'' +
                ", ownertel='" + ownertel + '\'' +
                ", ownerid='" + ownerid + '\'' +
                ", owneremail='" + owneremail + '\'' +
                ", account='" + account + '\'' +
                ", passcode='" + passcode + '\'' +
                ", storetel='" + storetel + '\'' +
                ", registertime='" + registertime + '\'' +
                ", tips='" + tips + '\'' +
                '}';
    }
}
