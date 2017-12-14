package com.ljq.cs.entity;

import java.io.Serializable;

/**
 * @description: 物流状态实体类
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/12/14
 */
public class LogisticInfo implements Serializable {

    private static final long serialVersionUID = 7209496936851386388L;

    private int id;   // id ,主键
    private String lstatus;   //  物流状态


    /**
     *  setter and getter
     * */
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLstatus() {
        return lstatus;
    }

    public void setLstatus(String lstatus) {
        this.lstatus = lstatus;
    }

    @Override
    public String toString() {
        return "LogisticInfo{" +
                "id=" + id +
                ", lstatus='" + lstatus + '\'' +
                '}';
    }
}
