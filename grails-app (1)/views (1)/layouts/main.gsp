<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">

	%{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'login_style.css')}" type="text/css">--}%
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
<g:if test="${!session.user}">
	<div style="margin-top: 150px;" id="grailsLogo" role="banner"><a href="http://grails.org"><img src="${resource(dir: 'images/skin', file: 'house.png')}" alt="Grails"/></a></div>
	</g:if>
	<g:if test="${session.user}">
		<div id="grailsLogo" role="banner"><a href="http://grails.org"><img src="${resource(dir: 'images', file: 'grails_logo.png')}" alt="Grails"/></a></div>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>

			<li><g:link class="create" action="create" controller="product">Product create</g:link></li>
			<li><g:link class="list" action="list" controller="product">Product list</g:link></li>
			<li><g:link class="create" action="create" controller="produtCategory">Product Category create</g:link></li>
			<li><g:link class="list" action="list" controller="produtCategory">Product Category List</g:link></li>



			<li><g:link class="list" action="logout" controller="login">LogOut</g:link></li>

			%{--<li><g:link class="list" action="list" controller="User">User</g:link></li>--}%
		</ul>
	</div>
		<div id="grailsLogo" role="banner">${session.user?.name}</div>
	</g:if>
	<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>
