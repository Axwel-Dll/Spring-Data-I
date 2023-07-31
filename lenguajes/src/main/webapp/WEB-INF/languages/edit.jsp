<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${language.name}</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>
    <div>
        <a href="/languages/delete/${language.id}"><h2 id="topRigth">Delete</h2></a>
        <a href="/languages"><h2 id="topRigth">Dashboard</h2></a>	

        <form:form action="/languages/${language.id}" method="post" modelAttribute="language">
            <input type="hidden" name="_method" value="put">
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
            <input id="btn2" type="submit" value="Submit"/>
        </form:form>
    </div>
</body>
</html>


