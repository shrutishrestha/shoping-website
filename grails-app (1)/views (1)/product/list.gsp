

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

		<div id="list-product" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="brand" title="${message(code: 'product.brand.label', default: 'Brand')}" />
					
						<th><g:message code="product.category.label" default="Category" /></th>
					
						<g:sortableColumn property="discount" title="${message(code: 'product.discount.label', default: 'Discount')}" />
					
						<g:sortableColumn property="featured" title="${message(code: 'product.featured.label', default: 'Featured')}" />
					
						<g:sortableColumn property="imageName" title="${message(code: 'product.imageName.label', default: 'Image Name')}" />
					
						<g:sortableColumn property="isSale" title="${message(code: 'product.isSale.label', default: 'Is Sale')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productInstanceList}" status="i" var="productInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${productInstance.id}">${fieldValue(bean: productInstance, field: "brand")}</g:link></td>
					
						<td>${productInstance.category.name}</td>
					
						<td>${fieldValue(bean: productInstance, field: "discount")}</td>
					
						<td><g:formatBoolean boolean="${productInstance.featured}" /></td>
					
						<td>${fieldValue(bean: productInstance, field: "imageName")}</td>
					
						<td><g:formatBoolean boolean="${productInstance.isSale}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${productInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
