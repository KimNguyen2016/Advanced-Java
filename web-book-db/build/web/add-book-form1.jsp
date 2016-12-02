<!DOCTYPE html>
<html>
    <head>     
        <title> Add Book </title>
        <link type="text/css" rel="stylesheet" href="css/style.css"/>
        <link type="text/css" rel="stylesheet" href="css/add-book-style.css"/>
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <h2>Book Store </h2>
            </div>
        </div>
        
        <div id="container">
            <h3> ADD BOOK </h3>
            <form action ="BookControllerServlet" method="GET">
                <input type="hidden" name="command" value="ADD" />
                <table>
                    <tbody>
                        <tr>
                            <td><label>Title : </label></td>
                            <td><input type="text" name="title" /></td>
                        </tr>
                        
                        <tr>
                            <td><label>Author's Name :</label></td>
                            <td><input type="text" name="authorName" /></td>
                        </tr>
                        
                        <tr>
                            <td><label>Description : </label></td>
                            <td><input type="text" name="content" /></td>
                        </tr>
                        
                        <tr>
                            <td><label></label></td>
                            <td><input type="submit" value= "Save"/></td>
                        </tr>
                    </tbody>
                </table>
            </form>
            
            <div style="clear:both;"></div>
            <br>
            <p>
                <a href="BookControllerServlet">Back To Book List</a>
            </p>
        </div>    
    </body>
    
</html>
