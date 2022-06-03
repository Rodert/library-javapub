package com.example.library.service;

import com.example.library.model.Admin;
import org.springframework.stereotype.Service;


public interface AdminService {
    Admin findAdminByStuidAndPassword(String stuid, String password);

    void addAdmin(Admin admin);
}
