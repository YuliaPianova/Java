package com.yuliapianova.mvc.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.yuliapianova.mvc.models.Book;
import com.yuliapianova.mvc.services.BookService;

@Controller
public class BookController {
	
	@Autowired
	BookService bookService;
	
	
	@GetMapping("/books/{bookId}")
	public String show(Model model, @PathVariable("bookId")Long bookId) {
		
		System.out.print(bookId);
		Book book = bookService.findBook(bookId); //retrieve one book
		System.out.println(book);
		
		// List<Book> books = bookService.allBooks(); 
		
		model.addAttribute("book", book);
		
		
		return "show.jsp";
	}
	
	@GetMapping("/books")
	public String show(Model model) {
		List<Book> books = bookService.allBooks();// show all the books
		model.addAttribute("books", books);
		return "show.jsp";
	}
	
	
	
}
	


