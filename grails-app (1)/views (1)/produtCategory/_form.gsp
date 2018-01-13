



<div class="fieldcontain ${hasErrors(bean: produtCategoryInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="produtCategory.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${produtCategoryInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: produtCategoryInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="produtCategory.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="status" type="number" value="${produtCategoryInstance.status}" required=""/>
</div>

