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
                <h1>Welcome to Kid Learning Books ! </h1>              
                <p>
                    Books are no substitute for living, but they can add immeasurably 
                    to its richness. When life is absorbing, books can enhance our sense
                    of its significance. When life is difficult, they can give us momentary 
                    release from trouble or a new insight into our problems, or provide the
                    rest and refreshment we need. Books have always been a source of information,
                    comfort, and pleasure for the people who know how to use them. This is just 
                    as true for children as adults. Indeed, it is particularly true for children.
                </p>
                <br>
                <h2>Contact Us</h2>                
                <h3>Kid Learning Books. </h3>
                <p>
                    4460 Tucana Court ? Mississauga ? ON ? L5R3K9
                </p>
                <p>Phone: 416 ? 666 - 9784</p>
                <p>Email:nnvn_2003@yahoo.com</p>
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

