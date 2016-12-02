<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<!DOCTYPE html>
<html>
    <head>        
        <title>Book Store Application </title>
        <link type="text/css" rel="stylesheet" href="css/style.css">
        <link type="text/css" rel="stylesheet" href="css/index-style.css">
        
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
        
        <!-- -->
        <div class="galleryContent">
				
            <div class="images">
                <div class="image_box">
                        <a target="_blank" href="BookControllerServlet">
                          <img src="images/story1.jpg" alt="my logo 1"/>
                          <span>BOXES FOR KATJE</span>
                        </a>				  	
                </div>
            </div>

            <div class="images">
                <div class="image_box">
                        <a target="_blank" href="BookControllerServlet">
                          <img src="images/story2.jpg" alt="my logo 2"/>
                          <span>THE GIVING BOOK</span>
                        </a>				  	
                </div>
            </div>

            <div class="images">
                <div class="image_box">
                        <a target="_blank" href="BookControllerServlet">
                          <img src="images/story3.jpg" alt="my logo 3"/>
                          <span>THINK OF THOSE IN NEED</span>
                        </a>				  	
                </div>
            </div>

            <div class="images">
                <div class="image_box">
                        <a target="_blank" href="#">
                          <img src="images/story4.jpg" alt="my logo 4"/>
                          <span>RUFUS AND RYAN GIVE THANKS</span>
                        </a>				  	
                </div>
            </div>

            <div class="images">
                    <div class="image_box">
                            <a target="_blank" href="BookControllerServlet">
                              <img src="images/story5.jpg" alt="my logo 5"/>
                              <span>THE SPIFFIEST GIANT IN TOWN</span>
                            </a>				  	
                    </div>
            </div>

            <div class="images">
                <div class="image_box">
                        <a target="_blank" href="BookControllerServlet">
                          <img src="images/story6.jpg" alt="my logo 6"/>
                          <span>MAMA,I'LL GIVE YOU.. </span>
                        </a>				  	
                </div>
            </div>				

            <div class="images">
                <div class="image_box">
                        <a target="_blank" href="BookControllerServlet">
                          <img src="images/story7.jpg" alt="my logo 7"/>
                          <span>ONE HEN</span>
                        </a>				  	
                </div>					
            </div>	

            <div class="images">
                <div class="image_box">
                        <a target="_blank" href="BookControllerServlet">
                          <img src="images/story8.jpg" alt="my logo 8"/>
                          <span>A KIDS GUIDE TO GIVING</span>
                        </a>				  	
                </div>
            </div>	

            <div class="images">
                <div class="image_box">
                        <a target="_blank" href="BookControllerServlet">
                          <img src="images/story9.jpg" alt="my logo 9"/>
                          <span>GIVE ME HALF</span>
                        </a>				  	
                </div>
            </div>	
            
            <div class="images">
                <div class="image_box">
                        <a target="_blank" href="BookControllerServlet">
                          <img src="images/story10.jpg" alt="my logo 10"/>
                          <span>THE GIVING TREE</span>
                        </a>				  	
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