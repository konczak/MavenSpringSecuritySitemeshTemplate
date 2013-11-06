<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
    <head>
        <title>Welcome</title>
        <meta name='description' content='A simple page'>
    </head>
    <body>
        <div class="project-template">
            <p>Welcome logged user!</p>
            <spring:message code="welcome_text"/><br/>
            <h3>Message : ${message}</h3>
            <h3>Username : ${username}</h3>
        </div>
    </body>
</html>