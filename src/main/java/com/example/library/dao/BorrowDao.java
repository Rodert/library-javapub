package com.example.library.dao;

import com.example.library.model.Borrow;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BorrowDao {
    void insertByBorrow(Borrow borrow);

    List<Borrow> findAllMyBorrow(String username);

    void delMyBorrow(int bid);

    List<Borrow> findallBorrowbooks();
}
