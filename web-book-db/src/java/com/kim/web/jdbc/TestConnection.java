package com.kim.web.jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet(name = "TestConnection", urlPatterns = {"/TestConnection"})
public class TestConnection extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet TestConnection</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet TestConnection at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    
    // Define datasource / connection pool
    @Resource(name="jdbc/web_book_db")
    private DataSource dataSource;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                       
        PrintWriter out = response.getWriter();
        response.setContentType("text/plain");
        
        Connection myConn = null;
        ResultSet myRs = null;
        Statement myStmt = null;
        
        try {
            
            String dbURL = "jdbc:mysql://localhost:3306/web_book_db";            
            String username ="root";
            String password ="password";
            
            Class.forName("com.mysql.jdbc.Driver");//load driver

            myConn = DriverManager.getConnection(dbURL, username, password);
            String sql = "select * from book";
            
            myStmt = myConn.createStatement();            
            myRs = myStmt.executeQuery(sql);      
            
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
