package com.kim.web.jdbc;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;

public class BookDbUtil {

    private DataSource dataSource;
    
    public BookDbUtil(DataSource theDataSource){
        dataSource = theDataSource;
    }
    
    public List<Book> getBooks() throws Exception{
			
        List<Book> books = new ArrayList<>();
				
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;
        
        try {
            //get a connection
            myConn = dataSource.getConnection();
            
            //create sql statement
            String sql = "select * from book order by title";
            myStmt = myConn.createStatement();
            
            //execute query
            myRs = myStmt.executeQuery(sql);
            
            // process result  set
            while (myRs.next()){
                
                // retrieve data from result
                int id = myRs.getInt("id");
                String title = myRs.getString("title");
                String authorName = myRs.getString("authorName");
                String content = myRs.getString("content");
                
                // create new book object
                Book tempBook = new Book(id, title, authorName, content);
                
                // add it to the list of books
                books.add(tempBook);
            }            
            
            return books;
        }
        finally {
            // close JDBC objects
            close(myConn, myStmt, myRs);
        }
    }

    public void close(Connection myConn, Statement myStmt, ResultSet myRs) {
        try{
            if (myRs != null){
                myRs.close();
            }
            if (myStmt != null){
                myStmt.close();
            }
            if (myConn != null){
                myConn.close(); // put back in connection pool
            }
        }
        catch (Exception exc){
            exc.printStackTrace();
        }
    }
    
    public void addBook(Book theBook) throws Exception {
        
        Connection myConn = null;
				PreparedStatement myStmt = null;
        try {

             // get db connection
             myConn = dataSource.getConnection();

            // create sql for insert
            String sql = "insert into book " +
                          "(title, authorName, content) " +
                          " values (?,?,?) ";

            myStmt = myConn.prepareStatement(sql);

            // set the param values for the book        
            myStmt.setString(1, theBook.getTitle());
            myStmt.setString(2, theBook.getAuthorName());
            myStmt.setString(3, theBook.getContent());

            //execute sql insert
            myStmt.execute();        
        }
        finally {
            // clean up JDBC obj
            close(myConn, myStmt, null);
        }        
    }
    
    public Book getBook(String theBookId) throws Exception {
        
        Book theBook = null;
        
        Connection myConn = null;
        PreparedStatement myStmt = null;
        ResultSet myRs = null;        
        int bookId;
				
        try {            
            // convert book id to int
            bookId = Integer.parseInt(theBookId);
            
            // get connection to database
            myConn = dataSource.getConnection();
            
            // create sql to get selected book 
            String sql ="Select * from book where id=?";
            
            // create prepared statement
            myStmt = myConn.prepareStatement(sql);
            // set param
            myStmt.setInt(1, bookId);
            
            // exec statement
            myRs = myStmt.executeQuery();
            
            // retrieve data from result set row
            
            if (myRs.next()){
                String title = myRs.getString("title");
                String authorName = myRs.getString("authorName");
                String content = myRs.getString("content");
                
                // use book Id during construction
                theBook = new Book(bookId, title, authorName, content);
            }
            
            else {
                throw new Exception("Book Id could not be found !" + bookId);
            }
            
            return theBook;                        
        }
        finally {
            close(myConn, myStmt, myRs);
        }
    }

    public void updateBook(Book theBook) throws Exception {
        
        Connection myConn = null;
        PreparedStatement myStmt = null;
        
        try {
            // get db connection
            myConn = dataSource.getConnection();

            // create SQL update statement
            String sql = "update book " + "set title=?, authorName=?, content=? " +
                         "where id=?";

            // prepare statement
            myStmt = myConn.prepareStatement(sql);

            // set params
            myStmt.setString(1, theBook.getTitle());
            myStmt.setString(2, theBook.getAuthorName());
            myStmt.setString(3, theBook.getContent());                
						myStmt.setInt(4, theBook.getId());
            // execute SQL statement
            myStmt.execute();
        }
    
        finally {
            close(myConn, myStmt, null);
        }
    }		

    public void deleteBook(String theBookId) throws Exception {
        
        Connection myConn = null;
        PreparedStatement myStmt = null;
        
        try{
            // convert book id to int
            int bookId = Integer.parseInt(theBookId);
            
            // get connection to database
            myConn = dataSource.getConnection();
            
            //create sql statement to delete book
            String sql = "delete from book where id=?";
            
            // prepare statement
            myStmt = myConn.prepareStatement(sql);
            
            // set params
            myStmt.setInt(1, bookId);
            
            // execute sql statement
            myStmt.execute();
            
        }
        finally{
            close(myConn, myStmt, null);
        }
    }
}
