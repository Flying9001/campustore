package com.ljq.cs.dao;

import com.ljq.cs.entity.Grade;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @description: 员工等级/权限 DAO 接口
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/12/17
 */
@Repository
public interface GradeDao {

    //	创建等级
    boolean create(Grade grade);
    //	删除等级
    boolean del(Grade grade);
    //	修改等级
    boolean update(Grade grade);
    //	查询所有的等级
    List queryAll();
    //	查询单条等级
    Grade queryOne();

}
