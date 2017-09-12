<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<style>
.error {
	color: red;
}
</style>
</head>
<body>
	<div align="center">
		<form:form action="login" method="post" commandName="loginForm">
			<table border="0">
				<tr>
					<td colspan="2" align="center"><h2>Spring MVC Form Demo -
							Registration</h2></td>
				</tr>
				<tr>
					<td>Username:</td>
					<td><form:input path="username" /> <form:errors
							path="username" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><form:password path="password" /> <form:errors
							path="password" cssClass="error" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="Login" /></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>