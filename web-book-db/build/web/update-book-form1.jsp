<!DOCTYPE html>
<html>
    <head>     
        <title> Update Books </title>
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
            <h3> UPDATE BOOK </h3>
            <form action ="BookControllerServlet" method="GET">
                <input type="hidden" name="command" value="UPDATE" />
								
                <input type="hidden" name="bookId" value="${THE_BOOK.id}" />
								
                <table>
                    <tbody>
                        <tr>
                            <td><label>Title : </label></td>
                            <td><input type="text" name="title" value="${THE_BOOK.title}" /></td>
                        </tr>
                        
                        <tr>
                            <td><label>Author's Name :</label></td>
                            <td><input type="text" name="authorName" value="${THE_BOOK.authorName}"/></td>
                        </tr>
                        
                        <tr>
                            <td><label>Description : </label></td>
                            <td><input type="text" name="content" value="${THE_BOOK.content}"/></td>
                        </tr>
                        
                        <tr>
                            <td><label></label></td>
                            <td><input type="submit" value= "Save" class ="save" /></td>
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
