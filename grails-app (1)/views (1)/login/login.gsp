<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Login Form</title>

    <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <meta name="layout" content="main">
</head>
<body>



<div style="padding:50px;">

        <g:form method="post" action="loginUser" controller="login">

            <div style="color: blue;" >${flash.message}</div>
            <p>Username:<g:field type="text" name="name" value="" placeholder="Username or Email"/></p><br>
            <p>Password:<g:field type="password" name="password" value="" placeholder="Password"/></p><br>
            <p class="submit"><g:submitButton value="submit" name="submit" /></p><br>
        </g:form>
</div>
%{--Dont have account <g:link action="signup" controller="login">sign up</g:link>--}%


</body>
</html>
