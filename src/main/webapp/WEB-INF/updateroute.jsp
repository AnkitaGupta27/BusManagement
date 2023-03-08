<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="	lightskyblue">


<h1>Arrival Times</h1>
<p id="test"></p>
	<script>

async function getText(file) {
  let x = await fetch(file);
  let y = await x.text();
  document.getElementById("test").innerHTML = y;
 
}
window.addEventListener("load",getText("http://localhost:8082/admin/updateroute?rid=1&shift=morning"));

</script>
<table align="CENTER" border="2" width="90%" text-align="center" border-spacing="30px">
			<tr>
				<td>Stop ID</td>
				<td>Stop Name</td>
			</tr>
			 <c:forEach var="stop" items="${list}">
				<tr>
					<td><c:out value="${stop.sid}" ></c:out>
					<td><c:out value="${stop.name}"></c:out>
					</tr></c:forEach></table>
</body>
</html>