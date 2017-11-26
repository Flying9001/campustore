package com.ljq.cs.entity;

import java.io.Serializable;

/**
 * @description: UserInfo entity class
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/11/15
 */
public class UserInfo implements Serializable{

    private static final long serialVersionUID = 296943748943950653L;

//    id
    private int id;
//    昵称
    private String nickname;
//    帐号
    private String account;
//    手机号
    private String phone;
//    用户名
    private String uname;
//    密码
    private String passcode;
//    注册时间
    private String registertime;
//    用户帐号状态 1:正常 0: 异常
    private int ustatus;
//    积分
    private int score;
//    地址
    private String address;
//    在线状态 1:在线 0:离线
    private int ifonline;
//    性别
    private String gender;
//    年龄
    private int age;
//    学校
    private String university;
//    学院
    private String college;
//    班级
    private String classes;
//    学号
    private String stuid;
//    QQ号
    private String qqnum;
//    微信
    private String weichat;
//    邮箱
    private String email;
//    头像(这里保存的为头像路径)
    private String headportrait;
//    个性签名
    private String tips;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPasscode() {
        return passcode;
    }

    public void setPasscode(String passcode) {
        this.passcode = passcode;
    }

    public String getRegistertime() {
        return registertime;
    }

    public void setRegistertime(String registertime) {
        this.registertime = registertime;
    }

    public int getUstatus() {
        return ustatus;
    }

    public void setUstatus(int ustatus) {
        this.ustatus = ustatus;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getIfonline() {
        return ifonline;
    }

    public void setIfonline(int ifonline) {
        this.ifonline = ifonline;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getUniversity() {
        return university;
    }

    public void setUniversity(String university) {
        this.university = university;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getClasses() {
        return classes;
    }

    public void setClasses(String classes) {
        this.classes = classes;
    }

    public String getStuid() {
        return stuid;
    }

    public void setStuid(String stuid) {
        this.stuid = stuid;
    }

    public String getQqnum() {
        return qqnum;
    }

    public void setQqnum(String qqnum) {
        this.qqnum = qqnum;
    }

    public String getWeichat() {
        return weichat;
    }

    public void setWeichat(String weichat) {
        this.weichat = weichat;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getHeadportrait() {
        return headportrait;
    }

    public void setHeadportrait(String headportrait) {
        this.headportrait = headportrait;
    }

    public String getTips() {
        return tips;
    }

    public void setTips(String tips) {
        this.tips = tips;
    }


    @Override
    public String toString() {
        return "UserInfo{" +
                "id=" + id +
                ", nickname='" + nickname + '\'' +
                ", account='" + account + '\'' +
                ", phone='" + phone + '\'' +
                ", uname='" + uname + '\'' +
                ", passcode='" + passcode + '\'' +
                ", registertime='" + registertime + '\'' +
                ", ustatus=" + ustatus +
                ", score=" + score +
                ", address='" + address + '\'' +
                ", ifonline=" + ifonline +
                ", gender='" + gender + '\'' +
                ", age=" + age +
                ", university='" + university + '\'' +
                ", college='" + college + '\'' +
                ", classes='" + classes + '\'' +
                ", stuid='" + stuid + '\'' +
                ", qqnum='" + qqnum + '\'' +
                ", weichat='" + weichat + '\'' +
                ", email='" + email + '\'' +
                ", headportrait='" + headportrait + '\'' +
                ", tips='" + tips + '\'' +
                '}';
    }
}
