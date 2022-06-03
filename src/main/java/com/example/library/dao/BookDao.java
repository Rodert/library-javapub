package com.example.library.dao;

import com.example.library.model.Book;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface BookDao {

    List<Book> findAllBooks();

    void deleteBookById(int bid);

    int addBook(Book book);

    void updateBookByBid(int bid);

    void upBookByBid(int bid);
}
