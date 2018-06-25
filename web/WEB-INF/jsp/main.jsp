<%-- 
    Document   : main
    Created on : Jun 24, 2018, 7:38:36 PM
    Author     : user129
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

        
        <title>Main</title>
    </head>
    <body>
        <%--
        <table>
            <!-- column headers -->
            <tr>    
                <th>content</th>
            </tr>
            <!-- column data -->
            <c:forEach var="entryTableOne" items="${tableOne}">
                <tr>    
                    <td><c:out value="${entryTableOne.content}"/></td>    
                </tr>
            </c:forEach>
        </table>
        --%>
        
        
        <div class="list-group">            
            <a href="#" class="list-group-item list-group-item-action list-group-item-dark">content</a>
            <c:forEach var="entryTableOne" items="${tableOne}">
                <a href="#" class="list-group-item list-group-item-action list-group-item-primary"><c:out value="${entryTableOne.content}"/></a>
            </c:forEach>                
        </div>
        
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    </body>
</html>





    

