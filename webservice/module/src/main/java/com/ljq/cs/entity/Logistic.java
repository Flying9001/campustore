package com.ljq.cs.entity;

import java.io.Serializable;

/**
 * @description: 物流信息实体类
 * @author: lujunqiang
 * @date: 2017/12/14
 */
public class Logistic implements Serializable {

    private static final long serialVersionUID = -7173127466816255099L;

    private int id;   // id ,主键
    private int oid;   //  订单 id ,外键
    private int lsid;   //  物流状态 id ,外键
    private  int eid;   //  派送员工 id ,外键

    /**
     *  setter and getter
     * */
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public int getLsid() {
        return lsid;
    }

    public void setLsid(int lsid) {
        this.lsid = lsid;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    @Override
    public String toString() {
        return "Logistic{" +
                "id=" + id +
                ", oid=" + oid +
                ", lsid=" + lsid +
                ", eid=" + eid +
                '}';
    }
}
