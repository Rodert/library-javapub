package com.example.library.dao;

import com.example.library.model.Admin;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AdminDao {

    Admin findAdminByStuidAndPassword(@Param("stuid") String stuid, @Param("password")String password);

    void addAdmin(Admin admin);
}
