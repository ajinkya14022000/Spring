<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form method="post" modelAttribute="myproduct1">
Product Name:<br>
<form:input path="pname"/> <br><br>
Price:<br><br>
<form:input path="price"/><br><br>
ID:<br><br>
<form:input path="pid"/><br><br>
Quantity:<br><br>
<form:input path="qty"/><br><br>
<input type=submit value="Add_Product"/>
</form:form>
</body>
</html>