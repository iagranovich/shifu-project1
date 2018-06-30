<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<table class="table table-bordered table-hover">
    <thead>
        <tr class="table-dark" >  
            <th>Title</th>
            <th>Content</th>
            <th>Slug</th>
            <th>Show</th>                    
        </tr>
    </thead>
    <tbody>
        <c:forEach var="entryTableOne" items="${tableOne}">
            <tr class="table-primary">                            
                <td><c:out value="${entryTableOne.title}"/></td>
                <td><c:out value="${entryTableOne.content}"/></td>
                <td><c:out value="${entryTableOne.slug}"/></td>
                <td>
                    <a href="/project1/entry/${entryTableOne.slug}.htm">???????????</a>
                </td>
            </tr>
        </c:forEach> 
    </tbody>
</table>