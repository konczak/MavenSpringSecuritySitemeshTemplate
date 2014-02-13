<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@attribute name="required" required="true" %>

<c:if test="${required}">
    <sup class="required">*</sup>
</c:if>