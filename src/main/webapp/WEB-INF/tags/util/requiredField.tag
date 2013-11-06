<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@attribute name="required" required="true" %>
<!--<sup class="ym-required" title="This field is mandatory.">*</sup>-->

<c:if test="${required}">
    <sup class="required">*</sup>
</c:if>