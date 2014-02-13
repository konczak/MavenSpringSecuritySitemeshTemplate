<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="util" tagdir="/WEB-INF/tags/util"%>
<%@attribute name="object" required="true"%>
<%@attribute name="fieldName" required="true"%>
<%@attribute name="required" required="false"%>

<c:set var="opaqueDivCssClass" value="form-group"/>
<c:if test="${pageContext.request.method == 'POST'}">
    <c:set var="opaqueDivCssClass" value="form-group has-success"/>
</c:if>
<c:set var="newScoreErrors"><form:errors path="${fieldName}"/></c:set>
<c:if test="${not empty newScoreErrors}">
    <c:set var="opaqueDivCssClass" value="form-group has-error"/>
</c:if>
<spring:message var="label" code="${object}.${fieldName}.label" htmlEscape="false"/>
<spring:message var="placeholderVal" code="${object}.${fieldName}.placeholder" htmlEscape="false"/>

<div class="${opaqueDivCssClass}">
    <form:label path="${fieldName}" cssClass="control-label">
        <c:out value="${label}"/>
        <util:requiredField required="${required}"/>
    </form:label>
    <form:errors path="${fieldName}" cssClass="alert alert-danger" element="div"/>
    <form:textarea path="${fieldName}" placeholder="${placeholderVal}" cssClass="form-control"/>
</div>