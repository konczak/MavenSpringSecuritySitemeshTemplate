<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<spring:url var="rootUrl" value="/"/>
<spring:url var="exampleCustomerFormUrl" value="/example/CustomerForm"/>
<spring:url var="exampleListUrl" value="/example/list"/>
<spring:url var="exampleMessageUrl" value="/example/message"/>
<spring:url var="exampleTableUrl" value="/example/table"/>
<html>
    <head>
        <title>Hello World</title>
        <meta name="description" content="A simple page">
    </head>
    <body>
        <div class="project-template">
            <div class="jumbotron">
                <h1>Hello world</h1>
                <p><spring:message code="welcome_text"/></p>
                <div class="list-group">
                    <a href="${rootUrl}" class="list-group-item active">${rootUrl}</a>
                    <a href="${exampleCustomerFormUrl}" class="list-group-item">${exampleCustomerFormUrl}</a>
                    <a href="${exampleListUrl}" class="list-group-item">${exampleListUrl}</a>
                    <a href="${exampleMessageUrl}" class="list-group-item">${exampleMessageUrl}</a>
                    <a href="${exampleTableUrl}" class="list-group-item">${exampleTableUrl}</a>
                </div>
            </div>
        </div>
    </body>
</html>