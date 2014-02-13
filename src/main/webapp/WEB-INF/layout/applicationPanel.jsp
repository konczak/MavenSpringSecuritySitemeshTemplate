<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url var="rootUrl" value="/"/>
<spring:url value="/resources/images/logo.png" var="logoUrl"/>
<div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>
    <a href="${rootUrl}">
        <img src="${logoUrl}" alt="Goteborg logo"/>
    </a>
</div>

