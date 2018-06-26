<%-- 
    Document   : admin
    Created on : Jun 18, 2018, 2:19:43 AM
    Author     : user129
--%>


<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
    <br><h1>Here you can add content to table1</h1><br>    
    
    <sf:form modelAttribute="entryTableOne" method="POST">
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <button class="btn btn-outline-secondary" type="submit">Add</button>
            </div>
            <sf:input path="content" class="form-control" placeholder="" aria-label="" aria-describedby="basic-addon1"/>
            <sf:input path="title" class="form-control" placeholder="" aria-label="" aria-describedby="basic-addon1"/>
            <sf:input path="slug" class="form-control" placeholder="" aria-label="" aria-describedby="basic-addon1"/>
        </div>
    </sf:form>

    <%--
    <sf:form modelAttribute="entryTableOne" method="post">     
                
        <sf:input path="content" />
        <sf:input path="title" />
        <sf:input path="slug" />
        
        <input type="submit" value="Отправить" name="Отправить" />
                
    </sf:form>
    --%>
    
    
        
    
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
  
    </body>
</html>
