<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/styles.css"> 
</head>
<body>
    <div id="container">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Creator</th>
                    <th>Version</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${languages}" var="language">
                <tr>
                    <td><a href="languages/<c:out value="${language.id}"/>"><c:out value="${language.name}"/> </a></td>
                    <td><c:out value="${language.creator}"/></td>
                    <td><c:out value="${language.currentVersion}"/></td>
                    <td><a href="/languages/delete/${language.id}">Delete</a> <a href="/languages/edit/${language.id}">Edit</a></td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
        <div id="form">
            <form:form action="/languages" method="post" modelAttribute="add">
            <h2>
                <form:label path="name">Name</form:label>
                <form:errors path="name"/>
                <form:input id="inp" path="name"/>
            </h2>
            <h2>
                <form:label path="creator">Creator</form:label>
                <form:errors path="creator"/>
                <form:input id="inp" path="creator"/>
            </h2>
            <h2>
                <form:label path="currentVersion">Version</form:label>
                <form:errors path="currentVersion"/>
                <form:input id="inp" path="currentVersion"/>
            </h2>   
            <input id="btn" type="submit" value="Submit"/>
            </form:form>  
        </div> 
    </div>   
</body>
</html>

