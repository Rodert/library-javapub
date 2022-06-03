package com.example.library.service.impl;

import com.example.library.dao.UserDao;
import com.example.library.model.User;
import com.example.library.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao udao;
    @Override
    public User findUserByStuidAndPassword(String stuid, String password) {
        return udao.findUserByStuidAndPassword(stuid,password);
    }

    @Override
    public void addUser(User user) {
        udao.addUser(user);
    }

    @Override
    public List<User> findAllStu() {
        return udao.findAllStu();
    }
}
