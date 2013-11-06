<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@attribute name="locale" required="true" %>

<c:url var="localeFlagUrl" value="/resources/images/i18n/${locale}.png"/>

<spring:url var="actualLinkAndLanguageChange" value="">
    <c:forEach items="${pageContext.request.parameterNames}" var="name">
        <c:if test="${name!='lang'}">
            <spring:param name="${name}" value="${pageContext.request.parameterMap[name][0]}"/>
        </c:if>
    </c:forEach>
    <spring:param name="lang" value="${locale}"/>
</spring:url>

<a href="${actualLinkAndLanguageChange}">
    <img src="${localeFlagUrl}" alt="${locale}"/>
</a>