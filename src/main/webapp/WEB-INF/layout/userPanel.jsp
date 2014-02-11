<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<spring:url var="loginUrl" value="/login" />
<spring:url var="logoutUrl" value="/j_spring_security_logout" />
<sec:authorize var="loggedIn" access="isAuthenticated()" />

<li>
    <c:choose>
        <c:when test="${loggedIn}">
            <a href="${logoutUrl}" >
                <spring:message code="security_logout"/>&nbsp;<sec:authentication property="principal.username" />
            </a>
        </c:when>
        <c:otherwise>
            <a href="${loginUrl}" ><spring:message code="security_login"/></a>
        </c:otherwise>
    </c:choose>
</li>
