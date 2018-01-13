<%--
  Created by IntelliJ IDEA.
  User: Sweychya
  Date: 7/14/2016
  Time: 11:27 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<li> <img src="${resource(dir: "products",file: "${productDetail.imageName}")}"  height="500" width="500 "alt="">
</li><br />
<li><h1>${productDetail.name}</h1></li><br />
price:${productDetail.price}<br />
<g:form action="AddToCart" method="post">
    <g:hiddenField name="id" value="${productDetail.id}"/>
    quantity=<input type="number" name="quantityToBuy"><br/>
    <g:submitButton type="submit" name="submit" value="add to cart"/>
</g:form>

</body>
</html>