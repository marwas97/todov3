package com.testarmy.entity;

import javax.persistence.*;

@Entity
public class VideoGame {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    public Long getId() {
        return id;
    }

    public VideoGame(String title, String author, String description) {
        this.title = title;
        this.author = author;
        this.description = description;
    }

    public VideoGame() {
    }

    public void setId(Long id) {
        this.id = id;
    }
    private String title;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    private String author;
    private String description;
}
