

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'produtCategory.label', default: 'ProdutCategory')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-produtCategory" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

	%{--</div>--}%
		<div id="list-produtCategory" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

		<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'produtCategory.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'produtCategory.status.label', default: 'Status')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${produtCategoryInstanceList}" status="i" var="produtCategoryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${produtCategoryInstance.id}">${fieldValue(bean: produtCategoryInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: produtCategoryInstance, field: "status")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${produtCategoryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
