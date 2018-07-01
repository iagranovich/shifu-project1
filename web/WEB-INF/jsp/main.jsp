<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:forEach var="entryTableOne" items="${tableOne}">
    <h2>
        <a href="/project1/articles/${entryTableOne.slug}.htm"><c:out value="${entryTableOne.title}"/></a><br>
    </h2>    
</c:forEach>