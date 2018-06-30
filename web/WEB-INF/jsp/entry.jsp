<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table class="table table-bordered table-hover">
    <thead>
        <tr class="table-dark" >  
            <th>Content</th>                              
        </tr>
    </thead>
    <tbody>
        <tr class="table-primary">
            <td><c:out value="${entry.content}"/></td>
        </tr>
    </tbody>
</table>