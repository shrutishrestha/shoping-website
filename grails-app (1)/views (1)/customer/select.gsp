<%--
  Created by IntelliJ IDEA.
  User: Sweychya
  Date: 7/20/2016
  Time: 7:11 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

    <title></title>
    <script>
        var ret = false;
        jQuery.ajax({
            url: "${createLink(controller: 'customer', action: 'choose')}",
            data: "name=" + optionValue,
            success: function (data) {
                alert(data);
            }
        });
    </script>
</head>

<body>

%{--<g:select name="user.company.id"--}%
          %{--from="${ProdutCategory.list()}"--}%
          %{--value="${user?.company.id}"--}%
          %{--optionKey="id" />--}%
<form action="choose">
<g:select optionKey="id" optionValue="name" name="category.name" from="${category}" />
<g:submitButton name="submit" value="submit" />
</body>
</html>