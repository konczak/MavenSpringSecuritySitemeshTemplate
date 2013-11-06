<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title><spring:message code="error_resourcenotfound_title"/></title>
    </head>
    <body>
        <h2><spring:message code="error_resourcenotfound_title"/></h2>
        <p>
            <spring:message code="error_resourcenotfound_problemdescription" />
        </p>
        <spring:message var="message" code="exception_message" />
        <p class="alert alert-warning">
            ${exception.message}
        </p>
        <spring:message var="stacktrace" code="exception_stacktrace" />
        <p class="alert alert-danger">
            <c:forEach items="${exception.stackTrace}" var="trace">
                ${trace}<br>
            </c:forEach>
        </p>
    </body>
</html>