package com.example.library.dao;

import com.example.library.model.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDao {
    User findUserByStuidAndPassword(@Param("stuid") String stuid, @Param("password")String password);

    void addUser(User user);

    List<User> findAllStu();
}
