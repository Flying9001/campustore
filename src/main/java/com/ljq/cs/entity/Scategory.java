package com.ljq.cs.entity;

import java.io.Serializable;

/**
 * @description: 商品小类
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/12/14
 */
public class Scategory implements Serializable {

    private static final long serialVersionUID = 7137500973068607933L;

    private int id;   // id,主键
    private int cid;   // 大类别编号
    private String scname;   // 小类别名称


    /**
     * setter and getter
     * */
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getScname() {
        return scname;
    }

    public void setScname(String scname) {
        this.scname = scname;
    }

    @Override
    public String toString() {
        return "Scategory{" +
                "id=" + id +
                ", cid=" + cid +
                ", scname='" + scname + '\'' +
                '}';
    }
}
