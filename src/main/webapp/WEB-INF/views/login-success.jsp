<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Success</title>
</head>
<body>
	<div align="center">
		<h2>Welcome user: ${customer.username}</h2>
		<h3>Session name: ${sessionScope.cust.username}</h3>
	</div>
	<form:form>
	<c:out value="${sessionScope.cust.username}"></c:out>
	</form:form>
	
</body>
</html>