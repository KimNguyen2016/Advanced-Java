package com.kim.web.jdbc;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
@WebServlet(name = "TestServlet", urlPatterns = {"/TestServlet"})
public class TestServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    // Define datasource / connection pool
    @Resource(name="jdbc/web_book_db")
    private DataSource dataSource;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {     
        
        // Step 1: set up the printwriter
        PrintWriter out = response.getWriter();
        response.setContentType("text/plain");
        
        // Step 2: get a connection to database
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;
        
        try {
            myConn = dataSource.getConnection();
            // Step 3: crate a SQL statements
            String sql = "select * from book";
            myStmt = myConn.createStatement();
            
            // Step 4: Execute SQL query
            myRs = myStmt.executeQuery(sql);
            
            // Step 5: Process the result set
            while (myRs.next()) {
                String name = myRs.getString("authorName");
                out.println(name);                
            }
        }
        catch (Exception exc){
            exc.printStackTrace();
        }        
    }
     
}
