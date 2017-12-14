package com.ljq.cs.entity;

import java.io.Serializable;

/**
 * @description: 员工操作记录实体类
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/12/14
 */
public class EmpLog implements Serializable {

    private static final long serialVersionUID = 3289210522592672065L;

    private int id;   //  id ,主键
    private int eid;   //  员工 id ,外键
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

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public String getOpration() {
        return opration;
    }

    public void setOpration(String opration) {
        this.opration = opration;
    }

    @Override
    public String toString() {
        return "EmpLog{" +
                "id=" + id +
                ", eid=" + eid +
                ", opration='" + opration + '\'' +
                '}';
    }
}
