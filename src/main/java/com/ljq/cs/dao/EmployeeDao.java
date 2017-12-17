package com.ljq.cs.dao;

import com.ljq.cs.dto.Pagination;
import com.ljq.cs.entity.Employee;
import com.ljq.cs.entity.Store;

import java.util.List;

/**
 * @description: 员工信息 DAO 接口
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/12/17
 */
public interface EmployeeDao {

    //	员工注册
    boolean signup(Employee emp);
    //	员工登录
    Employee signin(Employee emp);
    //	删除某一名员工
    boolean delOne(Employee emp);
    //	按条件批量删除员工
    boolean delByCondition(Store store);
    //	修改员工信息
    boolean update(Employee emp);
    //	按条件批量查询员工信息
    List queryByCondition(Employee emp, Pagination page);
    //	查询某一名员工
    Employee queryOne(Employee emp);
    //	按条件统计员工数量
    int countByCondition(Employee emp);
    //	统计所有的员工
    int countAll();


}
