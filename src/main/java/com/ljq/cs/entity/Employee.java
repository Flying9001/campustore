package com.ljq.cs.entity;

import java.io.Serializable;

/**
 * @description: 员工信息实体类
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/12/14
 */
public class Employee implements Serializable {

    private static final long serialVersionUID = 5191233232648866176L;

    private int id;   // id,主键
    private int sid;   //  店铺 id ,外键
    private String ename;   //  员工姓名
    private String phone;   //  员工电话
    private String idcard;   //  员工身份证
    private String passcode;   //  密码,初始值为: 12345
    private int grade;   //  等级
    private String registertime;   //  注册时间
    private String lasttime;   //  最后一次登录时间
    private String email;   //  邮箱
    private String address;   //  地址
    private String sex;   //  性别
    private int age;   //  年龄

    /**
     *  setter and getter
     * */
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard;
    }

    public String getPasscode() {
        return passcode;
    }

    public void setPasscode(String passcode) {
        this.passcode = passcode;
    }

    public int getGrade() {
        return grade;
    }

    public void setGrade(int grade) {
        this.grade = grade;
    }

    public String getRegistertime() {
        return registertime;
    }

    public void setRegistertime(String registertime) {
        this.registertime = registertime;
    }

    public String getLasttime() {
        return lasttime;
    }

    public void setLasttime(String lasttime) {
        this.lasttime = lasttime;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "id=" + id +
                ", sid=" + sid +
                ", ename='" + ename + '\'' +
                ", phone='" + phone + '\'' +
                ", idcard='" + idcard + '\'' +
                ", passcode='" + passcode + '\'' +
                ", grade=" + grade +
                ", registertime='" + registertime + '\'' +
                ", lasttime='" + lasttime + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                ", sex='" + sex + '\'' +
                ", age=" + age +
                '}';
    }
}
