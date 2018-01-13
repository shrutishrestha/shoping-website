<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="layout" content="d">
    <title>Shop Around</title>
</head>
<body>
<!-- Shell -->
<div class="shell">
    <!-- Header -->
<div id="header">
    <h1 id="logo"><a href="#">shoparound</a></h1>    <!-- Cart -->
    <div id="cart">
        <div class="cl">&nbsp;</div>
    </div>
    <!-- End Cart -->
    <!-- Navigation -->
    <div id="navigation">
        <ul>
            <li><g:link action="home">Home</g:link></li>
            <li><g:link action="support">Support</g:link></li>
            <li><g:link action="contact">Contact</g:link></li>
        </ul>
    </div>

    <!-- End Navigation -->
</div>
<!-- End Header -->
    <!-- End Header -->
    <!-- Main -->
    <div id="main">
        <div class="cl">&nbsp;</div>
        <!-- Content -->
        <div id="content">
            %{--<!-- Content Slider -->--}%
            %{--<table width="600">--}%
       %{----}%
        <h1>Shopping Cart</h1>


            <div class="column-labels">
                <label class="product-image">Image</label>
                <label class="product-details">Product</label>
                <label class="product-price">Price</label>
                <label class="product-quantity">Quantity</label>
                <label class="product-removal">Remove</label>
                <label class="product-line-price">Total</label>
            </div>
        <g:each in="${prod}" var="${c}" status="i" >
        <div class="product">

            <div class="product-image">
                <img  src="${resource(dir: "products",file: "${c.product.imageName}")}"   alt=""></td>            </div>
            <div class="product-details">
                <div class="product-title">${c.product.name}</div>
                <p class="product-description">The best dog bones of all time. Holy crap. Your dog will be begging for these things! I got curious once and ate one myself. I'm a fan.</p>
            </div>
            <div class="product-price">${c.product.price}</div>
            <div class="product-quantity">
                <form action="update">
                    <g:hiddenField name="id" value="${c.id}"/>

                    <g:hiddenField name="idP" value="${c.product.id}"/>
                    <input type="text" name="quantityToBuy" value="${c.quantityToBuy}" >
                    <br />
                    <g:submitButton name="update" value="update" />


                </form>
            </div>
            <div class="product-removal">
                <td>
                    <g:form action="delete">
                        <g:hiddenField name="id" value="${c.id}"/>
                        <g:hiddenField name="idP" value="${c.product.id}"/>

                        <g:submitButton name="delete" value="delete" />
                        </g:form>
                </td>
            </div>
            <div class="product-line-price"><p>${c.quantityPrice}</p>

          W/D: <p> ${c.withDiscount}</p>
            W/D: <p> ${c.pTotal}</p></div>


            </div>
    </g:each>
        <div class="totals">
            <div class="totals-item">
                <label>number of items:</label>
                <div class="totals-value" id="cart-tax">${count}</div>
            </div>
            <div class="totals-item">
                <label>Subtotal</label>
                <div class="totals-value" id="cart-subtotal">${prod.sum { it.quantityPrice } }</div>
            </div>

            <div class="totals-item">
                <label>discount</label>
                <div class="totals-value" id="cart-shipping">${prod.sum { it.withDiscount } }</div>
            </div>
            <div class="totals-item totals-item-total">
                <label>Grand Total</label>
                <div class="totals-value" id="cart-total">${prod.sum { it.pTotal } }</div>
            </div>
        </div>

       <g:form action="checkout" method="post">



           <g:submitButton type="submit" class="checkout" name="submit" value="checkout"/></g:form></td>
<td></td>
           <td> <g:form action="home" method="post">
                <g:submitButton type="submit" name="submit" class="checkout" value="Continue shopping"/></g:form>
      </td>
</table>
    </div>


<!-- End Content Slider -->
            <!-- Products -->
            <h2>FEATURED</h2>

            <!-- End Products -->

        <!-- End Content -->
        <!-- Sidebar -->
        <div id="sidebar">
            <!-- Search -->
        <div class="box search">
            <h2>Search by <span></span></h2>
            <div class="box-content">
                <form action="search" method="post">
                    <g:if test="${flash.message}">
                        <div  >${flash.message}</div>
                    </g:if>
                    <label>Keyword</label>
                    <input type="text" class="field" name="keyword" />

                    <g:submitButton name="Search" value="Search" />

                </form>
            </div>
        </div>
            <!-- End Search -->
            <!-- Categories -->
            <div class="box categories">
                <h2>Categories <span></span></h2>
                <div class="box-content">
                    <ul>
                        <g:each in="${categoryList}" var="${category}" status="i" >
                            <li>  <g:link action="categoryDetail" id="${category.id}" class="list-group-item">${category.name}</g:link></li>

                        </g:each>
                    </ul>
                </div>
            </div>
            <!-- End Categories -->
        </div>
        <!-- End Sidebar -->
        <div class="cl">&nbsp;</div>
    </div>
    <!-- End Main -->
    <!-- Side Full -->
    <div class="side-full">
        <!-- More Products -->

        <!-- End More Products -->
        <!-- Text Cols -->
    <div class="cols">
        <div class="cl">&nbsp;</div>
        <div class="col">
            <h3 class="ico ico1">transport</h3>
            <p class="more"><a href="#" class="bul"></a></p>
            we are available in more than 10 countries around the world
        </div>
        <div class="col">
            <h3 class="ico ico2">contact</h3>
            <p>also our contact details  </p><p>9840837652</p><p>9863748590</p>
        </div>
        <div class="col">
            <h3 class="ico ico3">gift hampers</h3>
            <p>gift hampers available for lucky draw winners</p>
        </div>
        <div class="col col-last">
            <h3 class="ico ico4">cart</h3>
            <p>you can shop around with your cart as many times as u want online</p>
        </div>
        <div class="cl">&nbsp;</div>
    </div>
        <!-- End Text Cols -->
    </div>
    <!-- End Side Full -->
    <!-- Footer -->
    <div id="footer">
        <p class="left"> <a href="#">Home</a> <span>|</span> <a href="#">Support</a> <span>|</span> <a href="#">My Account</a> <span>|</span> <a href="#">The Store</a> <span>|</span> <a href="#">Contact</a> </p>
        <p class="right"> &copy; 2010 Shop Around. Design by <a href="http://chocotemplates.com">Chocotemplates.com</a> </p>
    </div>
    <!-- End Footer -->
</div>
<!-- End Shell -->
</body>
</html>
