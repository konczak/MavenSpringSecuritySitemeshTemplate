<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<spring:url var="credentialsCheckUrl" value="j_spring_security_check" />
<spring:url var="signinCssUrl" value="/resources/css/signin.css" />

<spring:message var="usernamePlaceholder" code="security_login_username" htmlEscape="false"/>
<spring:message var="passwordPlaceholder" code="security_login_password" htmlEscape="false"/>
<spring:message var="buttonLoginLabel" code="security_login" htmlEscape="false"/>
<html>
    <head>
        <title><spring:message code="security_login_title"/></title>
        <link type="text/css" href="${signinCssUrl}" rel="stylesheet">
    </head>
    <body onload="document.f.j_username.focus();">
        <form name="f" action="${credentialsCheckUrl}" method="POST" class="form-signin">
            <h2 class="form-signin-heading"><spring:message code="security_login_title"/></h2>
            <div class="input-group">
                <span id="usernameAddon" class="input-group-addon">
                    <i class="glyphicon glyphicon-envelope"></i>
                </span>
                <input type="text" name="j_username" placeholder="${usernamePlaceholder}" class="form-control">
            </div>
            <div class="input-group">
                <span id="passwordAddon" class="input-group-addon">
                    <i class="glyphicon glyphicon-lock"></i>
                </span>
                <input type="password" name="j_password" placeholder="${passwordPlaceholder}" class="form-control">
            </div>
            <c:if test="${error}">
                <div class="alert alert-danger">
                    <i class="glyphicon glyphicon-warning-sign"></i>
                    <spring:message code="security_bad_credentials"/>
                </div>
            </c:if>
            <input class="btn btn-lg btn-primary btn-block" type="submit" value="${buttonLoginLabel}">
        </form>

    </body>
</html>