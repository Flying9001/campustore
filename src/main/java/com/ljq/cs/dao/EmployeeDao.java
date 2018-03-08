package com.ljq.cs.dao;

import com.ljq.cs.dto.Pagination;
import com.ljq.cs.entity.Employee;
import com.ljq.cs.entity.Store;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @description: 员工信息 DAO 接口
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/12/17
 */
@Repository
public interface EmployeeDao {

    //	员工注册
    boolean signup(@Param("emp") Employee emp);
    //	员工登录
    Employee signin(@Param("emp") Employee emp);
    //	删除某一名员工
    boolean delOne(@Param("emp") Employee emp);
    //	按条件批量删除员工
    boolean delByCondition(@Param("store") Store store);
    //	修改员工信息
    boolean update(@Param("emp") Employee emp);
    //	按条件批量查询员工信息
    List queryByCondition(@Param("emp") Employee emp, @Param("page") Pagination page);
    //	查询某一名员工
    Employee queryOne(@Param("emp") Employee emp);
    //	按条件统计员工数量
    int countByCondition(@Param("emp") Employee emp);
    //	统计所有的员工
    int countAll();


}
