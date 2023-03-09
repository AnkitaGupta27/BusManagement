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


<%-- <h1>Arrival Times</h1>
<p id="test"></p>
	<script>

async function getText(file) {
  let x = await fetch(file);
  let y = await x.text();
  document.getElementById("test").innerHTML = y;
 
}
window.addEventListener("load",getText("http://localhost:8082/admin/updateroute?rid=2&shift=morning"));

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
					
					 --%>
					
					
	<form action="/admin/updateRoute?rid=${route.rid}" method="GET">
							<input type="hidden" name="rid" value="${route.rid}" /> 
							<input type="hidden" name="shift" value="morning" /> 
							<table align="CENTER" border="2" width="90%" text-align="center" border-spacing="30px">
			
	<c:forEach items="${arrivalTimeTableList}" var="arrivalTimeTable">
	<tr>
		<td>Route ID: ${arrivalTimeTable.routeStop.route.rid}</td>
		<td>Stop Name: ${arrivalTimeTable.routeStop.stop.name}</td>
		<td>Morning Arrival Time: ${arrivalTimeTable.morningArrivalTime}</td>
		<td>Evening Arrival Time: ${arrivalTimeTable.eveningArrivalTime}</td>
		</tr>
	</c:forEach></form>
</body>
</html>