package com.example.library.service;

import com.example.library.model.User;

import java.util.List;

public interface UserService {

    User findUserByStuidAndPassword(String stuid, String password);

    void addUser(User user);

    List<User> findAllStu();
}
