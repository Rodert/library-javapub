package com.example.library.service.impl;

import com.example.library.dao.BorrowDao;
import com.example.library.model.Borrow;
import com.example.library.service.BorrowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BorrowServiceImpl implements BorrowService {
    @Autowired
    private BorrowDao bDao;

    @Override
    public void insertByBorrow(Borrow borrow) {
        bDao.insertByBorrow(borrow);
    }

    @Override
    public List<Borrow> findAllMyBorrow(String username) {
        return bDao.findAllMyBorrow(username);
    }

    @Override
    public void delMyBorrow(int bid) {
        bDao.delMyBorrow(bid);
    }

    @Override
    public List<Borrow> findallBorrowbooks() {
        return bDao.findallBorrowbooks();
    }
}
