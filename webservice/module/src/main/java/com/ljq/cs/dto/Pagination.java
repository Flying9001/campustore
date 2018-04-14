package com.ljq.cs.dto;

import java.io.Serializable;

/**
 * @description: 分页信息
 * @author: lujunqiang
 * @date: 2017/12/14
*/
public class Pagination implements Serializable {

    private static final long serialVersionUID = -5724519743864084454L;

    private int pagenum;   // 当前页码
    private int limitnum;   //  每页显示的条目数
    private int count;   //  结果总条数
    private int order;   //  排序规则

    /**
     *  排序规则:
     * 	order:
     * 		10 : 价格升序
     * 		20 : 价格降序
     * 		30 : 销量升序
     * 		40 : 销量降序
     */

    /**
     *  setter and getter
     * */
    public int getPagenum() {
        return pagenum;
    }

    public void setPagenum(int pagenum) {
        this.pagenum = pagenum;
    }

    public int getLimitnum() {
        return limitnum;
    }

    public void setLimitnum(int limitnum) {
        this.limitnum = limitnum;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getOrder() {
        return order;
    }

    public void setOrder(int order) {
        this.order = order;
    }

    @Override
    public String toString() {
        return "Pagination{" +
                "pagenum=" + pagenum +
                ", limitnum=" + limitnum +
                ", count=" + count +
                ", order=" + order +
                '}';
    }
}
