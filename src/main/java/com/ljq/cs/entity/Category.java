package com.ljq.cs.entity;

import java.io.Serializable;

/**
 * @description: 商品大类
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/12/14
 */
public class Category implements Serializable {

    private static final long serialVersionUID = -4212540086947942021L;

    private int id;   // id,主键
    private String cname;   // 大类别名称


    /**
     * setter and getter
     * */
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", cname='" + cname + '\'' +
                '}';
    }
}
