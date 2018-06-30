<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<br><h1>Here you can add title|content|slug to table1</h1><br>    

<sf:form modelAttribute="entryTableOne" method="POST">
    <div class="input-group mb-3">
        <div class="input-group-prepend">
            <button class="btn btn-outline-secondary" type="submit">Add</button>
        </div>
        <sf:input path="title" class="form-control" placeholder="" aria-label="" aria-describedby="basic-addon1"/>
        <sf:input path="content" class="form-control" placeholder="" aria-label="" aria-describedby="basic-addon1"/>
        <sf:input path="slug" class="form-control" placeholder="" aria-label="" aria-describedby="basic-addon1"/>
    </div>
</sf:form>