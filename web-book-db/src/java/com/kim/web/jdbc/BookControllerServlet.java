package com.kim.web.jdbc;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/BookControllerServlet")
public class BookControllerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;    
		
    private BookDbUtil bookDbUtil;
    
    @Resource(name="jdbc/web_book_db")
		
    private DataSource dataSource;
      
    @Override
    public void init() throws ServletException {
        super.init(); 
				
        // create book db util and pass in the connection pool / database
        try {
            bookDbUtil = new BookDbUtil(dataSource);
        }
        catch(Exception exc){
            throw new ServletException (exc);            
        }
    }
    
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            
            // read the command param
            String theCommand = request.getParameter("command");
            
            // if the command is missing, default to listing books
            if (theCommand == null){
                theCommand = "LIST";
            }
            
            // route to the appropriate method
            switch (theCommand){
                case "LIST":
                    listBooks(request, response);
                    break;
										
                case "ADD":
                    addBook(request, response);
                    break;
										
                case "LOAD":
                    loadBook(request, response);
                    break;
                case "UPDATE":
                    updateBook(request, response);
                    break;
                    
                case "DELETE":
                    deleteBook(request, response);
                    break;
                default:
                    listBooks(request, response);                
            }
            // list the books  in MVC fashion
            //listBooks(request, response);
        }
        catch (Exception exc){
            throw new ServletException(exc);
        }
    }
       
    
    private void listBooks(HttpServletRequest request, HttpServletResponse response)
    throws Exception {
                
        // get Books from db Util
        List<Book> books = bookDbUtil.getBooks();
        
        // add books to the request
        request.setAttribute("BOOK_LIST", books);
        
        // send to JSP page (view)
        RequestDispatcher dispatcher = request.getRequestDispatcher("/list-books.jsp");
        dispatcher.forward(request, response);
    }    
        

    private void addBook(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
        // read book info from form data
        String title = request.getParameter("title");
        String authorName = request.getParameter("authorName");
        String content = request.getParameter("content");
        
        // crate a new book obj
        Book theBook = new Book(title, authorName, content);
        
        // add the book to the database
        bookDbUtil.addBook(theBook);
        
        // send back to main page  (the book list)
        listBooks(request, response);
    }

    private void loadBook(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
        // read book id from data Book form
        String theBookId = request.getParameter("bookId");
        
        // get Book from database 
        Book theBook = bookDbUtil.getBook(theBookId);
        
        // Place Book in the request attribute
        request.setAttribute("THE_BOOK", theBook);
        
        // send to jsp page: update-book-form.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("/update-book-form.jsp");
        dispatcher.forward(request, response);        
        
    }

    private void updateBook(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
        // read book info from form data
        int id						 = Integer.parseInt(request.getParameter("bookId"));
        String title 			 = request.getParameter("title");
        String authorName  = request.getParameter("authorName");
        String content     = request.getParameter("content");
        
        // create a new book obj
        Book theBook = new Book(id, title, authorName, content);
        
        // perform update on database
        bookDbUtil.updateBook(theBook);
        
        //send them back to to "the list book" page
        listBooks(request, response);        
    }
    
    private void deleteBook(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
        // read book id from form data
        String theBookId = request.getParameter("bookId");
        
        // delete book from database
        bookDbUtil.deleteBook(theBookId);
        
        // send them back to "list books" page
       listBooks(request, response);
    }
}

