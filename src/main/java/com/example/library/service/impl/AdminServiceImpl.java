package com.example.library.service.impl;

import com.example.library.dao.AdminDao;
import com.example.library.model.Admin;
import com.example.library.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminDao aDao;
    @Override
    public Admin findAdminByStuidAndPassword(String stuid, String password) {
        return aDao.findAdminByStuidAndPassword( stuid,  password);
    }

    @Override
    public void addAdmin(Admin admin) {
        aDao.addAdmin(admin);
    }
}
