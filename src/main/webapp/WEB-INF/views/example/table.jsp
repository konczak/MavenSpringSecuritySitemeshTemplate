<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="joda" uri="http://www.joda.org/joda/time/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Example table</title>
    </head>
    <body>
        <h1>Example table!</h1>
        <table class="table table-striped table-hover">
            <thead>
                <tr>
                    <th><spring:message code="SomeDTO.uuid.label"/></th>
                    <th><spring:message code="SomeDTO.string.label"/></th>
                    <th><spring:message code="SomeDTO.integer.label"/></th>
                    <th><spring:message code="SomeDTO.currency.label"/></th>
                    <th><spring:message code="SomeDTO.dateTime.label"/></th>
                    <th><spring:message code="SomeDTO.bool.label"/></th>
                    <th><spring:message code="SomeDTO.bigDecimal.label"/></th>
                    <th>Print</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${someDTOList}" var="someDTO">
                    <tr>
                        <td>${someDTO.uuid}</td>
                        <td>${someDTO.string}</td>
                        <td>${someDTO.integer}</td>
                        <td>${someDTO.currency}</td>
                        <td><joda:format value="${someDTO.dateTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td>${someDTO.bool}</td>
                        <td>${someDTO.bigDecimal}</td>
                        <td><i class="glyphicon glyphicon-print"></i></td>
                        <td><i class="glyphicon glyphicon-edit"></i></td>
                        <td><i class="glyphicon glyphicon-trash"></i></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </body>
</html>
