package com.ljq.cs.dao;

import com.ljq.cs.dto.Pagination;
import com.ljq.cs.entity.EmpLog;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @description: 员工操作记录 DAO 接口
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/12/17
 */
@Repository
public interface EmpLogDao {

    //	创建员工操作记录
    boolean create(@Param("log") EmpLog log);
    //	删除所有操作记录ByEmployee
    boolean delByEmp(@Param("log") EmpLog log);
    //	删除单条操作记录
    boolean delOne(@Param("log") EmpLog log);
    //	查询所有操作记录ByEmp
    List queryByEmp(@Param("log") EmpLog log, @Param("page") Pagination page);
    //	查询单条操作记录
    EmpLog queryOne(@Param("log") EmpLog log);
    //	统计所有操作记录ByEmp
    int countByEmp(@Param("log") EmpLog log);


}
