<%--
  Created by IntelliJ IDEA.
  User: Sweychya
  Date: 7/20/2016
  Time: 3:23 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:form action="search">
    Search:<g:textField name="keyword" placeholder="search" value="${params?.keyword}" />
    <g:submitButton name="Search" value="Search" />
        </g:form>
</body>
</html>