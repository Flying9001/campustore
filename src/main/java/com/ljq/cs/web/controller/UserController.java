package com.ljq.cs.web.controller;

import com.ljq.cs.entity.UserInfo;
import com.ljq.cs.service.UserInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Desccription: 用户操作控制中心
 * @author: Thaumaturge
 * @email: lujunqiang@ancun.com
 * @date: 2018/3/8
 */
@Controller
@RequestMapping("user")
public class UserController {

    private static final Logger logback = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserInfoService userInfoService;


    @RequestMapping(value = "queryOneInfo")
    private String queryOneInfo(UserInfo userInfo, Model model){


        if(userInfo == null){
            logback.debug("request userInfo param is null !");
            return "redirect: /homepage";
        }
        logback.debug(userInfo.toString());
        userInfo = userInfoService.queryOneInfo(userInfo);
        if(userInfo == null){
            return "forward:/homepage";
        }
        logback.debug(userInfo.toString());
        model.addAttribute("userInfo",userInfo);
        return "homepage";

    }



}
