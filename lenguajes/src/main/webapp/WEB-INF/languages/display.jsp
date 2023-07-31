<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<div id="container">
		<a href="/languages"><h2 id="topRigth">Dashboard</h2></a>
		<h2>
			Name:
			<c:out value="${language.name}" />
		</h2>
		<h2>
			Creator:
			<c:out value="${language.creator}" />
		</h2>
		<h2>
			Version:
			<c:out value="${language.currentVersion}" />
		</h2>
		<a href="/languages/edit/${language.id}"><h2>Edit</h2></a> <a
			href="/languages/delete/${language.id}"><h2>Delete</h2></a>
	</div>
</body>
</html>


