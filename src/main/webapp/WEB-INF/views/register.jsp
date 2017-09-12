<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
<style>
.error {
	color: red;
}
</style>
<link
	href="<c:url value="/resources/bootstrap-3.3.7/css/bootstrap.min.css"/>"
	rel="stylesheet" />
<script src="<c:url value="/resources/js/jquery-1.9.1.js"/>"></script>
<script
	src="<c:url value="/resources/bootstrap-3.3.7/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/js/test.js"/>"></script>
</head>
<body>
<%-- 	<c:set var="cust" value="${sessionScope.cust.username}" />
	<c:set var="name" value="" />
	<c:if test="${empty cust}">
		<c:redirect url="login"></c:redirect>
	</c:if> --%>
	
	<div align="center">
		<form:form action="register" method="post" commandName="regForm">
			<table border="0">
				<tr>
					<td colspan="2" align="center"><h2>Spring MVC Form Demo -
							Registration</h2></td>
				</tr>
				<tr>
					<td>First Name:</td>
					<td><form:input path="firstName" /> <form:errors
							path="firstName" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><form:input path="lastName" /> <form:errors
							path="lastName" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Country:</td>
					<td><form:select path="country">
							<form:options items="${countries}" />
						</form:select></td>
				</tr>
				<tr>
					<td>Age:</td>
					<td><form:input path="age" /> <form:errors path="age"
							cssClass="error" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="Register" /></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>