<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<table class="table table-bordered table-hover">
    <thead>
        <tr class="table-dark" >  
            <th>Title</th>
            <th>Content</th>
            <th>Slug</th>            
            <th>Tools</th> 
        </tr>
    </thead>
    <tbody>
        <c:forEach var="entryTableOne" items="${tableOne}">
            <tr class="table-primary">                            
                <td><c:out value="${entryTableOne.title}"/></td>
                <td><c:out value="${entryTableOne.content}"/></td>
                <td><c:out value="${entryTableOne.slug}"/></td>               
                <td>
                    <a class="btn btn-danger" href="/project1/admin/articles/delete/${entryTableOne.id}.htm" role="button">Удалить</a>
                    <a class="btn btn-primary" href="/project1/admin/articles/edit/${entryTableOne.id}.htm" role="button">Редактировать</a>
                    <a class="btn btn-success" href="/project1/articles/${entryTableOne.slug}.htm" role="button">Просмотреть</a>
                </td>
            </tr>
        </c:forEach> 
    </tbody>
</table>

<h4><a href="articles/add.htm">Добавить статью</a></h4>