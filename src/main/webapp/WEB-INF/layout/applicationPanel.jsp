<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url var="rootUrl" value="/"/>
<div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="${rootUrl}">
        <spring:message code="application_name"/>&nbsp;<spring:message code="app_version"/>
    </a>
</div>