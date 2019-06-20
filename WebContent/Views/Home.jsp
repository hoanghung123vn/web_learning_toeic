<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home page</title>
</head>
<body>
	<h3>Register</h3>
	<br/>
	<form action="HomeController" method = "POST">
		<label for = "name">Enter your name: </label>
		<input name = "name" type = "text"/>
		<br/>
		<br/>
		<label for = "province_id">Your province: </label>
		<select name = "province_id">
			<c:forEach items = "${provinces}" var="i">
				  <option value = "${i.getProvince_id()}">${i.getName()}</option>
			</c:forEach>
		</select>
		<br/>
		<br/>
		<input type = "submit" value = "Sign up"/>
	</form>
</body>
</html>