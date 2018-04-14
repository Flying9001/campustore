package com.ljq.cs.entity;

import java.io.Serializable;

/**
 * @description: 用户浏览与操作记录
 * @author: lujunqiang
 * @date: 2017/12/14
 */
public class UserLog implements Serializable {

    private static final long serialVersionUID = -621715165871632666L;

    private int id;   //  id ,主键
    private int uid;   //  用户 id ,外键
    private int cid;   //  商品 id ,外键
    private int bcid;   //  商品大类 id ,外键
    private int scid;   //  商品小类 id ,外键
    private String updatetime;   //  更新时间
    private String opration;   //  操作说明

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

    public int getBcid() {
        return bcid;
    }

    public void setBcid(int bcid) {
        this.bcid = bcid;
    }

    public int getScid() {
        return scid;
    }

    public void setScid(int scid) {
        this.scid = scid;
    }

    public String getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(String updatetime) {
        this.updatetime = updatetime;
    }

    public String getOpration() {
        return opration;
    }

    public void setOpration(String opration) {
        this.opration = opration;
    }

    @Override
    public String toString() {
        return "UserLog{" +
                "id=" + id +
                ", uid=" + uid +
                ", cid=" + cid +
                ", bcid=" + bcid +
                ", scid=" + scid +
                ", opration='" + opration + '\'' +
                '}';
    }
}
