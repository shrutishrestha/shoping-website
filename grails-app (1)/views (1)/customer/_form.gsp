<table>
<tr><td>Name:</td><td>
${cust.name}</td>
</tr><tr><td>Email:</td><td>
${cust.email}</td>
</tr>




</table>

<table>
<th>id</th>

<th>name</th>
<th>price</th>
<th>quantity</th>
<th>quantityprice</th>
    <g:each in="cart" var="c" status="i">

       <td>${cart.quantityToBuy}</td>


    </g:each>
    </table>
