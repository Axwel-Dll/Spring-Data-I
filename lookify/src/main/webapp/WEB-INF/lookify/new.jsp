<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Song</title>
    <link rel="stylesheet" href="/css/new.css">
</head>
<body>
	<a href="/dashboard"><h2>Dashboard</h2></a>
    <div id="container">
        <form:form action="/songs/new" method="post" modelAttribute="add">
        <h2>
            <form:label id="title" path="title">Title</form:label>
            <form:errors path="title"/>
            <form:input path="title"/>
        </h2>
        <h2>
            <form:label path="artist">Artist</form:label>
            <form:errors path="artist"/>
            <form:input path="artist"/>
        </h2>
        <h2>
            <form:label path="rating">Rating (1-10)</form:label>
            <form:errors path="rating"/>
            <form:select path="rating">
                <form:option value="1">1</form:option>
                <form:option value="2">2</form:option>
                <form:option value="3">4</form:option>
                <form:option value="4">4</form:option>
                <form:option value="5">5</form:option>
                <form:option value="6">6</form:option>
                <form:option value="7">7</form:option>
                <form:option value="8">8</form:option>
                <form:option value="9">9</form:option>
                <form:option value="10">10</form:option>
            </form:select>
        </h2>   
        <input id="btn" type="submit" value="Add Song"/>
    </div>    
    </form:form>  
</body>
</html>
