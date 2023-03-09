<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Edit Route</title>
</head>
<body bgcolor="lightblue">


	<form action="/admin/editRoute">
	<table align="CENTER" border="2" width="90%" text-align="center" border-spacing="30px">
			 <tr>
				<td>Route ID</td>
				<td>Route Name</td>
				<td>Update Route</td>
			</tr> 
			<c:forEach var="route" items="${list}">
				<tr>
					<td><c:out value="${route.rid}" />
					<td><c:out value="${route.name}" /></td>
					<c:forEach var="data" items="${route}">
						<td>${data}</td>
					</c:forEach>
				</tr>
			</c:forEach>
		</table>
	</form>
	<br>

	<td>
		<form action = "/admin/updateroute">
		<input type="submit" value="Update Route"/>
		</form>
	</td>
	<br>
	<br>
	<button  onclick="location.href ='manageRoute.jsp'">Go
		Back</button>
	
	 
<script>
var info = document.getElementById('data');
/* var btn = info.getElementsByTagName("button")[0]; */
var btn = document.getElementById("btn");
var request = new XMLHttpRequest()
var availableStops;
request.open('GET',"http://localhost:8080/route/getall");
request.onload = function () {
	availableStops = JSON.parse(request.responseText);
	console.log(availableStops.length);
}
request.send();
var addedStops = [];
function createForm(){
	var retVal = '<form action = "editroute()">'
	+'<table align="CENTER">'
	+ '<tr>'
	+'<td>stop: </stop>' 
	+'<select name="stop">'
	for(i in availableStops){
		retVal += '<option value=' + availableStops[i]["rid"] + '>' + availableStops[i]["name"] +'</option>';
	} 
	+'</tr>'
	+'</form>';
	return retVal;
}
     
function addStop(){
	console.log("called addStops");
}
btn.addEventListener("click", function () {
    /* console.log(stops);*/
    /* for(i in stops){
    	alert("sid= " + stops[i]["sid"] +"name= " + stops[i]["name"]);
    }  */
    console.log(availableStops);
    info.innerHTML += createForm(); 
})
</script>

</body>
</html> --%>

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
