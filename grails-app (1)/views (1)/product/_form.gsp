



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'brand', 'error')} ">
	<label for="brand">
		<g:message code="product.brand.label" default="Brand" />
		
	</label>
	<g:textField name="brand" value="${productInstance?.brand}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="product.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${ProdutCategory.list()}" optionValue="name" optionKey="id" required="" value="${productInstance?.category?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'discount', 'error')} required">
	<label for="discount">
		<g:message code="product.discount.label" default="Discount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="discount" value="${fieldValue(bean: productInstance, field: 'discount')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'featured', 'error')} ">
	<label for="featured">
		<g:message code="product.featured.label" default="Featured" />
		
	</label>
	<g:checkBox name="featured" value="${productInstance?.featured}" />
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'imageName', 'error')} ">
	<label for="imageName">
		<g:message code="product.imageName.label" default="Image Name" />
		
	</label>
	<g:field name="image" type="file" />
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'isSale', 'error')} ">
	<label for="isSale">
		<g:message code="product.isSale.label" default="Is Sale" />
		
	</label>
	<g:checkBox name="isSale" value="${productInstance?.isSale}" />
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="product.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${productInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="product.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="price" value="${fieldValue(bean: productInstance, field: 'price')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'productDetails', 'error')} ">
	<label for="productDetails">
		<g:message code="product.productDetails.label" default="Product Details" />
		
	</label>
	<g:textField name="productDetails" value="${productInstance?.productDetails}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="product.quantity.label" default="Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantity" type="number" value="${productInstance.quantity}" required=""/>
</div>

