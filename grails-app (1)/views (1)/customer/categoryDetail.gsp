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
        <div class="products">
            %{--// <div class="cl">&nbsp;</div>--}%
            <ul>
        <g:each in="${categoryProducts}" var="${product}" status="i" >
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
    </ul>

</div></div>
    <!-- End Content Slider -->
            <!-- Products -->


            <!-- End Products -->
        </div>
        <!-- End Content -->
        <!-- Sidebar -->
        <div id="sidebar">
            <!-- Search -->
    <div class="box search">
        <h2>Search by <span></span></h2>
        <div class="box-content">
            <g:form action="search" method="post">
                <g:if test="${flash.message}">
                    <div  >${flash.message}</div>
                </g:if>
                <label>Keyword</label>
                <input type="text" class="field" name="keyword" />

                <g:submitButton name="Search" value="Search" />

            </g:form>
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


<!-- End Shell -->
</body>
</html>
