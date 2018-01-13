<%--
  Created by IntelliJ IDEA.
  User: Sweychya
  Date: 7/9/2016
  Time: 3:31 PM
--%>


<div class="col-md-2">
    <p class="lead">THE ONLINE MART</p>
    <div class="list-group">
        <g:each in="${categoryList}" var="${category}" status="i" >
            <g:link action="productDisplay" id="${category.id}" class="list-group-item">${category.name}</g:link>

        </g:each> </div>
</div>

