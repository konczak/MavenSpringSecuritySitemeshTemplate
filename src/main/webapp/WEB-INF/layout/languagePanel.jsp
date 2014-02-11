<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="util" tagdir="/WEB-INF/tags/util"%>

<c:set var="language" value="${pageContext.response.locale.language}"/>
<spring:url var="blankGifUrl" value="/resources/images/blank.gif"/>

<li>
    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
        <img src="${blankGifUrl}" class="flag flag-${language}" alt="${language}" />
        <b class="caret"></b>
    </a>
    <ul class="dropdown-menu">
        <li><util:language locale="en"/></li>
        <li><util:language locale="sv"/></li>
    </ul>
</li>