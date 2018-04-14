package com.ljq.cs.dao;

import com.ljq.cs.dto.Pagination;
import com.ljq.cs.entity.EmpLog;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @description: 员工操作记录 DAO 接口
 * @author: lujunqiang
 * @date: 2017/12/17
 */
@Repository
public interface EmpLogDao {

    //	创建员工操作记录
    boolean create(EmpLog log);
    //	删除所有操作记录ByEmployee
    boolean delByEmp(EmpLog log);
    //	删除单条操作记录
    boolean delOne(EmpLog log);
    //	查询所有操作记录ByEmp
    List queryByEmp(EmpLog log, Pagination page);
    //	查询单条操作记录
    EmpLog queryOne(EmpLog log);
    //	统计所有操作记录ByEmp
    int countByEmp(EmpLog log);


}
