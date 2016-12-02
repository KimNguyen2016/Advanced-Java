package com.kim.web.jdbc;

public class Book {
    private int id;
    private String title;
    private String authorName;
    private String content;

    public Book(int id, String title, String authorName, String content) {
        this.id = id;
        this.title = title;
        this.authorName = authorName;
        this.content = content;
    }

    public Book(String title, String authorName, String content) {
        this.title = title;
        this.authorName = authorName;
        this.content = content;
    }
    
    
    public Book(String title, String authorName) {
        this.title = title;
        this.authorName = authorName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthorName() {
        return authorName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
    
    
}
