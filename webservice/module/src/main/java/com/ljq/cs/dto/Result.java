package com.ljq.cs.dto;

/**
 * @description: json result class,封装 json 对象,多种返回结果都是用这一个
 * @author: lujunqiang
 * @date: 2018/3/10
 */
public class Result<T> {

    private boolean success; // 是否成功标志
    private T data;  // 成功时返回的数据
    private String error;  // 错误信息

    public Result(){

    }

    // 成功时的构造器
    public Result(boolean success,T data){
        this.success = success;
        this.data = data;
    }

    // 错误时的构造器
    public Result(boolean success,String error){
        this.success = success;
        this.error = error;
    }


    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }
}
