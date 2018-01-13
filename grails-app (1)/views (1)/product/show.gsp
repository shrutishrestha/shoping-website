

<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<a href="#show-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

</div>
<div id="show-product" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list product">

        <g:if test="${productInstance?.brand}">
            <li class="fieldcontain">
                <span id="brand-label" class="property-label"><g:message code="product.brand.label" default="Brand" /></span>

                <span class="property-value" aria-labelledby="brand-label"><g:fieldValue bean="${productInstance}" field="brand"/></span>

            </li>
        </g:if>

        <g:if test="${productInstance?.category}">
            <li class="fieldcontain">
                <span id="category-label" class="property-label"><g:message code="product.category.label" default="Category" /></span>

                <span class="property-value" aria-labelledby="category-label"><g:link controller="produtCategory" action="show" id="${productInstance?.category?.id}">${productInstance?.category?.name}</g:link></span>

            </li>
        </g:if>

        <g:if test="${productInstance?.discount}">
            <li class="fieldcontain">
                <span id="discount-label" class="property-label"><g:message code="product.discount.label" default="Discount" /></span>

                <span class="property-value" aria-labelledby="discount-label"><g:fieldValue bean="${productInstance}" field="discount"/></span>

            </li>
        </g:if>

        <g:if test="${productInstance?.featured}">
            <li class="fieldcontain">
                <span id="featured-label" class="property-label"><g:message code="product.featured.label" default="Featured" /></span>

                <span class="property-value" aria-labelledby="featured-label"><g:formatBoolean boolean="${productInstance?.featured}" /></span>

            </li>
        </g:if>

        <g:if test="${productInstance?.imageName}">
            <li class="fieldcontain">
                <span id="imageName-label" class="property-label"><g:message code="product.imageName.label" default="Image " /></span>

                <img src="${resource(dir:"products",file:"${productInstance.imageName}")}" height="100">
            </li>
        </g:if>

        <g:if test="${productInstance?.isSale}">
            <li class="fieldcontain">
                <span id="isSale-label" class="property-label"><g:message code="product.isSale.label" default="Is Sale" /></span>

                <span class="property-value" aria-labelledby="isSale-label"><g:formatBoolean boolean="${productInstance?.isSale}" /></span>

            </li>
        </g:if>

        <g:if test="${productInstance?.name}">
            <li class="fieldcontain">
                <span id="name-label" class="property-label"><g:message code="product.name.label" default="Name" /></span>

                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${productInstance}" field="name"/></span>

            </li>
        </g:if>

        <g:if test="${productInstance?.price}">
            <li class="fieldcontain">
                <span id="price-label" class="property-label"><g:message code="product.price.label" default="Price" /></span>

                <span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${productInstance}" field="price"/></span>

            </li>
        </g:if>

        <g:if test="${productInstance?.productDetails}">
            <li class="fieldcontain">
                <span id="productDetails-label" class="property-label"><g:message code="product.productDetails.label" default="Product Details" /></span>

                <span class="property-value" aria-labelledby="productDetails-label"><g:fieldValue bean="${productInstance}" field="productDetails"/></span>

            </li>
        </g:if>

        <g:if test="${productInstance?.quantity}">
            <li class="fieldcontain">
                <span id="quantity-label" class="property-label"><g:message code="product.quantity.label" default="Quantity" /></span>

                <span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${productInstance}" field="quantity"/></span>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${productInstance?.id}" />
            <g:link class="edit" action="edit" id="${productInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
            <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </fieldset>
    </g:form>
</div>
</body>
</html>
