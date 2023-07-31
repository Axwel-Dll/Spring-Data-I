<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lookify!</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>
    <a href="/songs/new"><h2 class="left">Add New</h2></a>
    <a href="/search/topten"><h2 class="left">Top Songs</h2></a>

    <form class="left" action="/search" method="post">
        <input class="form" type="search" name="artist" placeholder="Artist">
        <input class="form" type="submit" value="Search Artists">

    </form>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Name</th>
                <th>Rating</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${songs}" var="song">
            <tr>
                <td><a href="songs/<c:out value="${song.id}"/>"><c:out value="${song.title}"/></a></td>
                <td><c:out value="${song.rating}"/></td>
                <td><a href="/delete/<c:out value="${song.id}"/>">Delete</a></td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>