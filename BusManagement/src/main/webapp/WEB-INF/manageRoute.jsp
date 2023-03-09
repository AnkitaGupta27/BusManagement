<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage Routes</title>
</head>
<body bgcolor= "limegray">
<h1 style="text-align:center"> Manage Route</h1>

<table align="CENTER">
<tr>
	<td>
		<form action = "/admin/addRoute">
		<input type="submit" value="add a route"/>
		</form>
	</td>
	<td>
		<form action = "/admin/editRoute">
		<input type="submit" value="edit a route"/>
		</form>
	</td>
	<td>
		<form action = "/admin/viewRoutes">
		<input type="submit" value="view a route"/>
		</form>
	</td>
</tr>
</table>

</body>
</html>