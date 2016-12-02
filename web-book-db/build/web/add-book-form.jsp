<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>

<!DOCTYPE html>
<html>
    <head>        
        <title>Book Store Application </title>
        <link type="text/css" rel="stylesheet" href="css/style.css">
        <link type="text/css" rel="stylesheet" href="css/add-book-style.css">
    </head>
        
    <body>
        <header>
		<div class="header_block">
                    <h1><a href="index.html"> 
                        <img src="images/logo.jpg">    
                         Kid Learning Books - Great Stories</a>
                    </h1>
		</div>
	</header>
        
        <nav class="nav main-nav">
		<div class="container">
			<ul>    
                                <li><a href="index.jsp">Home</a></li>
				<li><a href="BookControllerServlet">List of Books</a></li>
				<li><a href="add-book-form.jsp">Add Books</a></li>
				<li><a href="contact.jsp">Contact Us</a></li>

			</ul>
		</div>
	</nav>        
        
        <div class="block content">
            <div class="main block">
                
                <h3> ADD BOOK </h3>
                <form action ="BookControllerServlet" method="GET">
                    <input type="hidden" name="command" value="ADD" />
                    <table>
                        <tbody class="add_table">
                            <tr>
                                <td><label>Title</label></td>
                                <td><input type="text" name="title" /></td>
                            </tr>

                            <tr>
                                <td><label>Author's Name</label></td>
                                <td><input type="text" name="authorName" /></td>
                            </tr>

                            <tr>
                                <td><label>Description</label></td>
                                <td><input type="text" name="content" /></td>
                            </tr>

                            <tr>
                                <td><label></label></td>
                                <td id="saveBtn"><input type="submit" value= "SAVE"/></td>
                            </tr>
                        </tbody>
                    </table>                
                </form>            
            </div>
            <!-- side bar -->
            <div class="side">
                <div class="block">
                        <h3> New Book </h3>
                        <div id="image">
                            <a href="BookControllerServlet"><img src = "images/newbook.jpg" /></a>
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
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="BookControllerServlet">List of Books</a></li>
                            <li><a href="add-book-form.jsp">Add Books</a></li>
                            <li><a href="contact.jsp">Contact Us</a></li>

                        </ul>
                </div>
            </div>
        </footer>            
        
    </body>
    
</html>
