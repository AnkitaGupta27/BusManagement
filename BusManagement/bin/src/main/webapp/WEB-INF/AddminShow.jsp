<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.LinkedHashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
${Admin}
<%--
out.println("<h1>ADMIN DETAILS: </H1>");
LinkedHashMap<String,String> temp = (LinkedHashMap<String,String>)request.getAttribute("Admin");
out.println("<h2>" +temp.get("email")+"</h2>");
String e = temp.get("email");
--%>

<%--<%=temp.get("password") %>--%>
</body>
</html>