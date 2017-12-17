package com.ljq.cs.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @description: 时间工具类
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/12/17
 */
public class TimeUtil {

    public static String getFormateDateLocal(){
        String date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        return date;
    }






}
