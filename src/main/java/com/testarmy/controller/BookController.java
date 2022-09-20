package com.testarmy.controller;

import com.testarmy.entity.Book;
import com.testarmy.repository.BookRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

//CRUD
//create read update delet
@Controller
@RequestMapping("/book")
public class BookController {

    private BookRepository bookRepository;
    public BookController(BookRepository bookRepository){
        this.bookRepository = bookRepository;
    }
    @GetMapping("/add")
    public String addBook(){
        return "book_form";
    }
    @PostMapping("/add")
    public String addBook(@RequestParam String title,
                          @RequestParam String author,
                          @RequestParam String description){
        Book book = new Book(title, author, description);
        bookRepository.save(book);
        return "redirect:/book";
    }
    @GetMapping("/")
    public String getBookList(Model model){
        List <Book> bookList = bookRepository.findAll();
        model.addAttribute("bookList", bookList);
        return "book_list";
    }
    @GetMapping("/edit/{id}")
    public String getBookEdit(Model model,@PathVariable Long id){
        Optional<Book> book = bookRepository.findById(id);
        book.ifPresent(b -> model.addAttribute("book", b));
        return "book_edit";
    }
    @PostMapping("/edit/{id}")
    public String postBookEdit(@PathVariable Long id,
    @RequestParam String title,
    @RequestParam String author,
    @RequestParam String description){
        Optional<Book>book=bookRepository.findById(id);
    book.ifPresent(b ->{
        b.setAuthor(author);
        b.setTitle(title);
        b.setDescription(description);
        bookRepository.save(b);
    });
    return "redirect:/book/";
    }
    @GetMapping("/delete/{id}")
    public String deleteBook(@PathVariable Long id, Model model){
        Optional<Book> book = bookRepository.findById(id);
        book.ifPresent(b-> model.addAttribute("book",b));
        return "book_delete";
    }
    @PostMapping("/delete/{id}")
    public String deleteBook(@PathVariable Long id, @RequestParam(required = false)Optional <String> delete){
        delete.ifPresent(s -> {bookRepository.deleteById(id);});
        return "redirect:/book/";
    }
}
