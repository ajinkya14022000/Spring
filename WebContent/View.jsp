<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>We have following Companies for Placements</h1>
	<table border="1">
	<tr>
		<th align="left">Id</th>
		<th align="left">Name</th>
		<th align="left">Price</th>
		<th align="left">Quantity</th>
	</tr>
	<c:forEach var="prod"  items="${mylist}">
		<tr>
			<td> ${prod.pid}</td>
			<td> ${prod.pname}</td>
			<td> ${prod.price}</td>
			<td> ${prod.qty}</td>
		</tr>
		</c:forEach>
	</table>
	<br><br>
</body>
</html>