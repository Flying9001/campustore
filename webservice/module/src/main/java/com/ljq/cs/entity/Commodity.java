package com.ljq.cs.entity;

import java.io.Serializable;

/**
 * @description: 商品信息实体类
 * @author: lujunqiang
 * @date: 2017/12/14
 */
public class Commodity implements Serializable {

    private static final long serialVersionUID = 1314468108884454878L;

    private int id;   // id,主键
    private int cid;   //  商品大类 id,外键
    private int scid;   //  商品小类 id, 外键
    private int stoid;   //  商铺 id ,外键
    private String cname;   //  商品名称
    private double pricein;   //  进价
    private double priceout;   //  售价
    private int stockcount;   //  库存数量
    private int cstatus;   //  上架状态,默认未上架,1: 未上架; 0: 上架
    private int prohibit;   //  是否被禁止, 默认没有被禁止; 1: 未禁止，0: 被禁止
    private String picture1;   //  商品图片 1
    private String picture2;   //  商品图片 2
    private String picture3;   //  商品图片 3
    private int sales;   //  月销量
    private String details;   //  详情
    private String brand;   //  品牌
    private String proplace;   //  生产地

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

    public int getScid() {
        return scid;
    }

    public void setScid(int scid) {
        this.scid = scid;
    }

    public int getStoid() {
        return stoid;
    }

    public void setStoid(int stoid) {
        this.stoid = stoid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public double getPricein() {
        return pricein;
    }

    public void setPricein(double pricein) {
        this.pricein = pricein;
    }

    public double getPriceout() {
        return priceout;
    }

    public void setPriceout(double priceout) {
        this.priceout = priceout;
    }

    public int getStockcount() {
        return stockcount;
    }

    public void setStockcount(int stockcount) {
        this.stockcount = stockcount;
    }

    public int getCstatus() {
        return cstatus;
    }

    public void setCstatus(int cstatus) {
        this.cstatus = cstatus;
    }

    public int getProhibit() {
        return prohibit;
    }

    public void setProhibit(int prohibit) {
        this.prohibit = prohibit;
    }

    public String getPicture1() {
        return picture1;
    }

    public void setPicture1(String picture1) {
        this.picture1 = picture1;
    }

    public String getPicture2() {
        return picture2;
    }

    public void setPicture2(String picture2) {
        this.picture2 = picture2;
    }

    public String getPicture3() {
        return picture3;
    }

    public void setPicture3(String picture3) {
        this.picture3 = picture3;
    }

    public int getSales() {
        return sales;
    }

    public void setSales(int sales) {
        this.sales = sales;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getProplace() {
        return proplace;
    }

    public void setProplace(String proplace) {
        this.proplace = proplace;
    }

    @Override
    public String toString() {
        return "Commodity{" +
                "id=" + id +
                ", cid=" + cid +
                ", scid=" + scid +
                ", stoid=" + stoid +
                ", cname='" + cname + '\'' +
                ", pricein=" + pricein +
                ", priceout=" + priceout +
                ", stockcount=" + stockcount +
                ", cstatus=" + cstatus +
                ", prohibit=" + prohibit +
                ", picture1='" + picture1 + '\'' +
                ", picture2='" + picture2 + '\'' +
                ", picture3='" + picture3 + '\'' +
                ", sales=" + sales +
                ", details='" + details + '\'' +
                ", brand='" + brand + '\'' +
                ", proplace='" + proplace + '\'' +
                '}';
    }
}
