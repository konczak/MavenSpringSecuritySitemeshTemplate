<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="util" tagdir="/WEB-INF/tags/util"%>

<c:set var="language" value="${pageContext.response.locale.language}"/>
<spring:url var="blankGifUrl" value="/resources/images/blank.gif"/>

<li>
    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
        <img src="${blankGifUrl}" class="flag lang-${language}" alt="${language}" />
        <b class="caret"></b>
    </a>
    <ul class="dropdown-menu">
        <li class="disabled"><util:language language="zh"/></li>
        <li class="disabled"><util:language language="de"/></li>
        <li class="disabled"><util:language language="es"/></li>
        <li class="disabled"><util:language language="fr"/></li>
        <li><util:language language="en"/></li>
        <li class="disabled"><util:language language="it"/></li>
        <li class="disabled"><util:language language="ja"/></li>
        <li class="disabled"><util:language language="ko"/></li>
        <li class="disabled"><util:language language="pl"/></li>
        <li class="disabled"><util:language language="ru"/></li>
        <li><util:language language="sv"/></li>
        <li class="disabled"><util:language language="tr"/></li>
    </ul>
</li>