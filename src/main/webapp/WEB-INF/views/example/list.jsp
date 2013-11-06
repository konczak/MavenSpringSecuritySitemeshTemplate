<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Example list</title>
    </head>
    <body>
        <h1>Example list!</h1>
        <ul class="list-group">
            <c:forEach items="${webFrameworkList}" var="object">
                <li class="list-group-item">
                    <c:out value="${object}"/>
                </li>
            </c:forEach>
        </ul>
    </body>
</html>
