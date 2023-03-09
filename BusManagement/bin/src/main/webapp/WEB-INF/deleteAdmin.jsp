<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>deleteAdmin</title>
</head>
<body bgcolor="limegrey">
<H1> Delete a Admin</H1>

<c:forEach items="${Admins}" var="admin">
            <%-- <tr>
                <td>${movie.name}</td>
                <td>${movie.genre}</td>
                <td>
                    <form:form method="DELETE" action="/movie/${movie.id}" modelAttribute="movie">
                        <input type="submit" value="DELETE"/>
                    </form:form>
                </td>
            </tr>--%>
            
</c:forEach>

</body>
</html>