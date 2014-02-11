<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="myForm" tagdir="/WEB-INF/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Example form</title>
    </head>
    <body>
        <h1>Example form!</h1>
        <form:form method="POST" commandName="customer" role="form">
            <form:errors path="*" cssClass="info-danger" element="div" />

            <myForm:input object="customer" fieldName="userName" required="true"/>
            <myForm:textarea object="customer" fieldName="address"/>
            <myForm:password object="customer" fieldName="password" required="true"/>
            <myForm:password object="customer" fieldName="confirmPassword" required="true"/>
            <myForm:checkbox object="customer" fieldName="receiveNewsletter"/>
            <form:hidden path="secretValue" />
            <button type="submit" class="btn btn-default">Submit</button>
        </form:form>
    </body>
</html>
