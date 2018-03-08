package com.ljq.cs.dao;

import com.ljq.cs.dto.Pagination;
import com.ljq.cs.entity.UserScore;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @description: 用户积分 DAO
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/12/17
 */
@Repository
public interface UserScoreDao {

    //	添加积分
    boolean addScore(@Param("score") UserScore score);
    //	修改积分
    boolean updateScore(@Param("score") UserScore score);
    //	查询个人积分
    List queryScoreByUser(@Param("page") Pagination page);


}
