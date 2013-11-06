<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="credentialsCheckUrl" value="j_spring_security_check" />
<c:url var="signinCssUrl" value="/resources/css/signin.css" />

<html>
    <head>
        <title><spring:message code="security_login_title"/></title>
        <meta name="description" content="A simple page">
        <link type="text/css" href="${signinCssUrl}" rel="stylesheet">
    </head>
    <body onload="document.f.j_username.focus();">
        <div class="alert alert-info">
            <spring:message code="security_login_message"/>
        </div>
        <form name="f" action="${credentialsCheckUrl}" method="POST" class="form-signin">
            <h2 class="form-signin-heading"><spring:message code="security_login_title"/></h2>
            <input type="text" name="j_username" placeholder="<spring:message code="security_login_username"/>" class="form-control">
            <input type="password" name="j_password" placeholder="<spring:message code="security_login_password"/>" class="form-control">
            <c:if test="${error}">
                <div class="alert alert-danger">
                    <spring:message code="security_bad_credentials"/>
                </div>
            </c:if>
            <input class="btn btn-lg btn-primary btn-block" type="submit" value="<spring:message code="button_submit"/>">
        </form>

    </body>
</html>