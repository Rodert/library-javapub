package com.example.library.service.impl;

import com.example.library.dao.BookDao;
import com.example.library.model.Book;
import com.example.library.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService {
    @Autowired
    private BookDao bDao;
    @Override
    public List<Book> findAllBooks() {
        return bDao.findAllBooks();
    }

    @Override
    public void deleteBookById(int bid) {
        bDao.deleteBookById(bid);
    }

    @Override
    public int addBook(Book book) {
        return bDao.addBook(book);
    }

    @Override
    public void updateBookByBid(int bid) {
        bDao.updateBookByBid(bid);
    }

    @Override
    public void upBookByBid(int bid) {
        bDao.upBookByBid(bid);
    }
}
