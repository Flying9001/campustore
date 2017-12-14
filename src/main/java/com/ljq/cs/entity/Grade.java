package com.ljq.cs.entity;

import java.io.Serializable;

/**
 * @description: 员工等级/权限实体类
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/12/14
 */
public class Grade implements Serializable {

    private static final long serialVersionUID = -8270439249805289213L;

    private int id;   // id ,主键
    private String gname;   //  等级名称

    /**
     *  setter and getter
     * */
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    @Override
    public String toString() {
        return "Grade{" +
                "id=" + id +
                ", gname='" + gname + '\'' +
                '}';
    }
}
