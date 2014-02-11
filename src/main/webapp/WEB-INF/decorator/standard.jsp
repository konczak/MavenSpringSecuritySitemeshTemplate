<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="bootstrapCssUrl" value="/resources/css/bootstrap.min.css" />
<spring:url var="projectCssUrl" value="/resources/css/standard.css" />
<spring:url var="flagsCssUrl" value="/resources/css/flags.css" />
<spring:url var="faviconUrl" value="/resources/images/favicon.png" />
<spring:url var="jqueryJsUrl" value="/resources/js/jquery-1.10.2/jquery.js" />
<spring:url var="bootstrapJsUrl" value="/resources/js/bootstrap-3.0.3/bootstrap.js" />
<c:set var="language" value="${pageContext.response.locale.language}"/>

<!DOCTYPE html>
<html lang="${language}">
    <head>
        <meta charset="utf-8">
        <meta name="description" content="">
        <meta name="author" content="Konczak Piotr">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title><sitemesh:write property="title"/></title>

        <sitemesh:write property="head"/>

        <!-- Bootstrap -->
        <link type="text/css" href="${bootstrapCssUrl}" rel="stylesheet" media="screen">

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="../../assets/js/html5shiv.js"></script>
          <script src="../../assets/js/respond.min.js"></script>
        <![endif]-->
        <link type="image/x-icon" href="${faviconUrl}" rel="shortcut icon">
        <link type="text/css" href="${flagsCssUrl}" rel="stylesheet">
        <link type="text/css" href="${projectCssUrl}" rel="stylesheet">
    </head>

<body>
    <header id="wrap">
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <jsp:include page="../layout/applicationPanel.jsp"/>
                <div class="navbar-collapse collapse">
                    <jsp:include page="../layout/menu.jsp"/>
                    <ul class="nav navbar-nav navbar-right">
                        <jsp:include page="../layout/languagePanel.jsp"/>
                        <jsp:include page="../layout/userPanel.jsp"/>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <main class="container">
        <sitemesh:write property="body"/>
    </main>

    <jsp:include page="../layout/footer.jsp"/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${jqueryJsUrl}"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${bootstrapJsUrl}"></script>
</body>

</html>

