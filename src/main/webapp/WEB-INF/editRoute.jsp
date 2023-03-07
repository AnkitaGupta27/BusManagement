
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Edit Route</title>
</head>
<body bgcolor="lightsteelblue">
	<h1 style="text-align:center">Edit Route</h1>

	<c:if test="${not empty errorMessage}">
		<p style="color: red">${errorMessage}</p>
	</c:if>
	<form action="/admin/updateroute" method="POST">
		<table align="CENTER" border="2" width="90%" text-align="center"
			border-spacing="30px">
			<tr>
				<td>Route ID</td>
				<td>Route start</td>
				<td>Route End</td>
				<td>Update Route</td>
			</tr>
			 <c:forEach var="route" items="${list}">
				<tr>
					<td><c:out value="${route.rid}" />
					<td><c:out value="${route.start.name}" /></td>
					<td><c:out value="${route.end.name}" /></td>
					<td><form action="/admin/updateroute">
							<input type="submit" value="Update route" /></td>

				</tr>
			</c:forEach> 
		
	</table></form><br><br>
	<form action="/admin/manageRoute" style="text-align:center">
		<input type="submit" value="GoBack" />
</body>
</html>
