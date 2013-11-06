<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="util" tagdir="/WEB-INF/tags/util"%>
<%@attribute name="object" required="true" %>
<%@attribute name="fieldName" required="true" %>
<%@attribute name="acceptedFiles" required="true" %>
<%@attribute name="tooltip" required="false" %>
<%@attribute name="tooltipMessage" required="false" %>

<spring:url var="questionMarkImgSrc" value="/resources/images/questionMark.png"/>
<c:set var="opaqueDivCssClass" value="ym-fbox ym-fbox-text"/>
<c:set var="newScoreErrors"><form:errors path="${fieldName}"/></c:set>
<c:if test="${not empty newScoreErrors}">
    <c:set var="opaqueDivCssClass" value="ym-fbox ym-fbox-text ym-error"/>
</c:if>

<div class="${opaqueDivCssClass}">
    <form:label path="${fieldName}">
        <spring:message code="${object}.${fieldName}.label"/>
        <util:requiredField/>
    </form:label>
    <c:if test="${tooltip == true}">
        <div id="outer" >
            <img src="${questionMarkImgSrc}" alt="Help">
            <div id="tooltip" class="box success">
                <spring:message code="${tooltipMessage}"/>
            </div> 
        </div>
    </c:if>
    <form:input object="oAuth2ClientRegisterDTO" path="${fieldName}" type="file" name="some" accept="${acceptedFiles}"/>
    <form:errors path="${fieldName}" cssClass="ym-message" element="p"/>
</div>

