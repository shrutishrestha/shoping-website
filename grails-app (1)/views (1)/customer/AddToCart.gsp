<%--
  Created by IntelliJ IDEA.
  User: Sweychya
  Date: 7/12/2016
  Time: 5:42 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<script>
    if (!document.getElementById('name').value.trim()) {
        alert('Please enter the remarks');
    }
</script>



</head>

<body>
<table width="1000">
    <tr><th>image</th>
    <th>name</th>
   <th>quantityToBuy</th>
    </tr>
<g:each in="${prod}" var="${c}" status="i" >

    <tr>

     <td>   <img  src="${resource(dir: "products",file: "${c.product.imageName}")}"   alt=""></td>


    <td><h2>${c.product.name}</h2></td>
   <td>
       <form action="update">
           <g:hiddenField name="id" value="${c.product.id}"/>
        <input type="text" name="quantityToBuy" value="${c.quantityToBuy}" >
        <g:submitButton name="update" value="update" />


</form>
       </td>
        <td>
            <form action="update">
                <g:hiddenField name="id" value="${c.product.id}"/>
                <input type="text" name="quantityToBuy" value="${c.quantityToBuy}" >
                <g:submitButton name="update" value="update" />


            </form>



</form>

   </tr>
</g:each>
    </table>
<g:form action="home" method="post">
    <g:submitButton type="submit" name="submit" value="Continue shopping"/></g:form>

<h2>number of items:${count}<br/></h2>
subtotal:${prod.sum { it.quantityPrice } }</h2>
<g:form action="checkout" method="post">

    name:<g:textField name="name" placeholder="name" id="name"/>
    email:<g:textField name="email" placeholder="email"/>
    phone:<g:textField name="phone" placeholder="phone"/>

    <g:submitButton type="submit" name="submit" value="checkout"/></g:form>


</body>
</html>