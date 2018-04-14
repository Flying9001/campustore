package com.ljq.entity;

import java.io.Serializable;

/**
 * @description: 用户积分实体类
 * @author: lujunqiang
 * @date: 2017/12/14
 */
public class UserScore implements Serializable {
    private static final long serialVersionUID = -2981438863126153757L;

    private int id; // id,主键
    private int uid; // 用户id,外键
    private int score; // 积分


    /**
     *  setter and gettter
     * */
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }


    @Override
    public String toString() {
        return "UserScore{" +
                "id=" + id +
                ", uid=" + uid +
                ", score=" + score +
                '}';
    }
}
