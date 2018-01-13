<%--
  Created by IntelliJ IDEA.
  User: Sweychya
  Date: 7/20/2016
  Time: 4:05 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:each in="${productList}" var="${prod}" status="i" >
    <li> <g:link action="products" id="${prod.id}" >${prod.name}</g:link>
    </li>
</g:each>


</body>
</html>