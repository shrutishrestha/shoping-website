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
<!-- Main -->
<div id="main">
    <div class="cl">&nbsp;</div>
    <!-- Content -->
    <div id="content">
        <!-- Content Slider -->
        <div id="slider" class="box">
            <div id="slider-holder">

                <ul>
                    <li><a href="#"><img src="products/2.jpg" alt="" /></a></li>
                    <li><a href="#"><img src="products/5.jpg" alt="" /></a></li>
                    <li><a href="#"><img src="products/6.jpg" alt="" /></a></li>
                </ul>
            </div>
            <div id="slider-nav"> <a href="#" class="active">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> </div>
        </div>
        <!-- End Content Slider -->
        <!-- Products -->
        <h2>FEATURED</h2>
        <div class="products">
           %{--// <div class="cl">&nbsp;</div>--}%
            <ul>


                <g:each in="${productList}" var="${product}" status="i" >
                    <li>
                                        <img src="${resource(dir: "products",file: "${product.imageName}")}"  alt="">
                    <div class="caption">
                        <h4 class="pull-right">${product.price}</h4>
                    <g:link action="productDisplay" id="${product.id}" > <h4>${product.name}</g:link></a>
                %{--<img src="${resource(dir: "products",file: "${productInstance.imageName}")}" height="100">--}%

                    </h4>
                    <p>${product.productDetails}</p>
                    </li>
                </g:each>
        </li>
        </ul></div>
            <h1>Sale</h1>
            <div class="products">
        <ul>


            <g:each in="${productSale}" var="${prodS}" status="i" >
                <li>
                    <img src="${resource(dir: "products",file: "${prodS.imageName}")}"  alt="">
                    <div class="caption">
                      <h4 class="pull-right">${prodS.price}</h4>
                        <g:link action="productDisplay" id="${prodS.id}" > <h4>${prodS.name}</g:link></a>
                        %{--<img src="${resource(dir: "products",file: "${productInstance.imageName}")}" height="100">--}%

                    </h4>
                        <p>${prodS.productDetails}</p>
                </li>
            </g:each>


        </ul>

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
                <form action="customer/search" method="post">
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
    <p class="right">@ :shruti shrestha </p>
</div>
<!-- End Footer -->
</div>
<!-- End Shell -->
</body>
</html>
