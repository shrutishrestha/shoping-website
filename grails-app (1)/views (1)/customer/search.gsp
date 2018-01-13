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
            <!-- Content Slider -->
            <div id="slider1" >
                <div id="slider1-holder">


                    <g:each in="${productDetail}" var="${product}" status="i" >
                        <img src="${resource(dir: "products",file: "${productDetail.imageName}" )}"   alt="">





                        </br>
                        <table>
                            <tr><td>Detail : </tr>
                            <tr><td> Name:</td><td>${productDetail.name}</td></tr>
                            <div class="price"> <tr> <td>price:</td><p><span><td>${productDetail.price}</td></span></p></tr></div>

                            <tr> <td>Product Details:</td><td>${productDetail.productDetails}</td></tr>

                            <tr> <td> Brand:</td><td>${productDetail.brand}</td></tr>
                            <tr> <td> Quantity available:</td><td>${productDetail.quantity}</td></tr>
                            <tr> <td>Discount:</td><td>${productDetail.discount}</td></tr>

                        </table><g:form action="cart" method="post">
                        <g:hiddenField name="id" value="${productDetail.id}"/>
                        quantity=<input type="number" name="quantityToBuy" min="1" max="${productDetail.quantity}">
                        <g:submitButton type="submit" name="submit" value="AddToCart"/>
                    </g:form>


                    </g:each>


                    <p>Share Product :</p>

                    <a href="#">     <img src="${resource(dir: "products",file: "facebook.jpg" )}"   alt=""></a>

                    <a href="#">     <img src="${resource(dir: "products",file: "l.jpg" )}"   alt=""></a>






                </ul></div>
            </div>

            <!-- End Content Slider -->
            <!-- Products -->
            <h2><strong>Similar picks</strong></h2><br />
            <div  class="products1">
            %{--// <div class="cl">&nbsp;</div>--}%

                <g:each in="${similar}" var="${sim}" status="i" >

                    <g:link action="productDisplay" id="${sim.id}" > <img src="${resource(dir: "products",file: "${sim.imageName}")}"  alt=""></a>

                    </g:link></g:each>



                <div class="cl">&nbsp;</div>
            </div>
            <!-- End Products -->
        </div>
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
        <div class="more-products">
            <div class="more-products-holder">
                <ul>

                    <li class="last"><a href="#"><img src="css/images/small7.jpg" alt="" /></a></li>
                </ul>
            </div>
            <div class="more-nav"> <a href="#" class="prev">previous</a> <a href="#" class="next">next</a> </div>
        </div>
        <!-- End More Products -->
        <!-- Text Cols -->
        <div class="cols">
            <div class="cl">&nbsp;</div>
            <div class="col">
                <h3 class="ico ico1">Donec imperdiet</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec imperdiet, metus ac cursus auctor, arcu felis ornare dui.</p>
                <p class="more"><a href="#" class="bul">Lorem ipsum</a></p>
            </div>
            <div class="col">
                <h3 class="ico ico2">Donec imperdiet</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec imperdiet, metus ac cursus auctor, arcu felis ornare dui.</p>
                <p class="more"><a href="#" class="bul">Lorem ipsum</a></p>
            </div>
            <div class="col">
                <h3 class="ico ico3">Donec imperdiet</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec imperdiet, metus ac cursus auctor, arcu felis ornare dui.</p>
                <p class="more"><a href="#" class="bul">Lorem ipsum</a></p>
            </div>
            <div class="col col-last">
                <h3 class="ico ico4">Donec imperdiet</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec imperdiet, metus ac cursus auctor, arcu felis ornare dui.</p>
                <p class="more"><a href="#" class="bul">Lorem ipsum</a></p>
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
