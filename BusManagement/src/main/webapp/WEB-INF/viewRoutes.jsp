<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table align="CENTER" border="2" width="90%" text-align="center"
			border-spacing="30px">
			<tr>
				<td>Route ID</td>
				<td>Route start</td>
				<td>Route End</td>
				<td>View Stops</td>
			</tr>
			 <c:forEach var="route" items="${list}">
				<tr>
					<td><c:out value="${route.rid}" />
					<td><c:out value="${route.start.name}" /></td>
					<td><c:out value="${route.end.name}" /></td>
					<td><form action="/admin/updateRoute?rid=${route.rid}" method="GET">
							<input type="hidden" name="rid" value="${route.rid}" /> 
							<input type="hidden" name="shift" value="morning" /> 
							<input type="submit" value="View Stops" /></td>
				</form>
				</tr>
			</c:forEach> 
		
	</table>
	<br><br>
	<form action="/admin/manageRoute" style="text-align:center">
		<input type="submit" value="GoBack" />
</body>
</html>