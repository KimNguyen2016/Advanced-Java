<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>

<!DOCTYPE html>
<html>
    <head>        
        <title>Book Store Application </title>
        <link type="text/css" rel="stylesheet" href="css/style.css">
    </head>
        
    <body>
        <div id="wrapper">
            <div id="header">
                <h2>Book Store </h2>
            </div>
        </div>
        
        <div id="container">
            <div id="content">
                
                <!-- Add button -->
                <input type="button" value="Add Book" 
                       onclick ="window.location.href='add-book-form.jsp'; return false;"
                       class ="add-book-button"
                />
                <table>
                    
                    <tr>
                        <th> Title </th>
                        <th> Author Name </th>
                        <th> Description </th>
                        <th> Task </th>
                    </tr>
                    
                    <c:forEach var ="tempBook" items="${BOOK_LIST}">
                        <!--set up link for each book -->
                        <c:url var = "tempLink" value="BookControllerServlet">
                            <c:param name="command" value="LOAD" />
                            <c:param name="bookId" value="${tempBook.id}" />
                        </c:url>
                        
                        <!-- set up a link to delete a book -->
                        <c:url var = "deleteLink" value="BookControllerServlet">
                            <c:param name="command" value="DELETE" />
                            <c:param name="bookId" value="${tempBook.id}" />
                        </c:url>
                        
                        <tr>
                            <td>${tempBook.title}</td>
                            <td>${tempBook.authorName} </td>
                            <td id="col3"> ${tempBook.content}</td>
                            <td>
                                <a href ="${tempLink}">Update Book </a>
                                |
                                <a href="${deleteLink}" 
                                   onclick="if (!(confirm('Are you sure you want to delete this book?'))) return false">
                                    Delete
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                    
                </table>                
            </div>      
            
            <!-- side bar -->
            <div class="side">
                <div class="block">
                        <h3> New Book </h3>
                        <div id="image">
                            <img src = "images/newbook.jpg" />
                        </div>
                        <div id="desc">
                            <p>Cocoa the Chocolate Fairy has been picked to watch over the special
                               chocolate eggs for the spring Egg Parade. But right before the parade,
                               the eggs are missing from the nest. Can Cocoa and her friends solve
                               the egg mystery before the big day? </p>				
                        </div>
                        
                </div>
            </div>	
		
            </div>
            
            <!-- Footer -->
            <footer class="main-footer">
		<div class="container">
                    <div class="f_left">
                            <p>&copy; 2016 - Kim Nguyen</p>
                    </div>
                    <div class="f_right">
                            <ul>
                                    <li><a href="Home.html">Home</a></li>
                                    <li><a href="AddBook.html">Add Book</a></li>
                                    <li><a href="">About</a></li>

                            </ul>
                    </div>
		</div>
            </footer>
        </div>
    </body>
</html>
