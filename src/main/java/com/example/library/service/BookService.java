package com.example.library.service;

import com.example.library.model.Book;

import java.util.List;

public interface BookService {
    List<Book> findAllBooks();

    void deleteBookById(int bid);

    int addBook(Book book);

    void updateBookByBid(int bid);

    void upBookByBid(int bid);
}
