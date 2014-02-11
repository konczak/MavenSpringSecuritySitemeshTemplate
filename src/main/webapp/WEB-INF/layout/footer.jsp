<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:message var="telepUrl" code="telep.url.main"/>
<spring:message var="modulsystemUrl" code="modulsystem.url.main"/>
<spring:message var="cybercomUrl" code="cybercom.url.main"/>

<footer>
    <div class="container text-left">
        <p>
            <spring:message code="application_name"/>&nbsp;<spring:message code="app_version"/>
        </p>
        <ul class="list-inline">
            <li>
                <a href="${telepUrl}" target="_blank">Tele P</a>
            </li>
            <li>-</li>
            <li>
                <a href="${modulsystemUrl}" target="_blank">ModulSystem</a>
            </li>
            <li>-</li>
            <li>
                <a href="${cybercomUrl}" target="_blank">Cybercom Poland</a>
            </li>
        </ul>
        <p>
            Copyright &copy; 2013 
        </p>
    </div>
</footer>