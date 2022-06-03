package com.example.library.service;

import com.example.library.model.Borrow;

import java.util.List;

public interface BorrowService {
    void insertByBorrow(Borrow borrow);

    List<Borrow> findAllMyBorrow(String username);

    void delMyBorrow(int bid);

    List<Borrow> findallBorrowbooks();
}
