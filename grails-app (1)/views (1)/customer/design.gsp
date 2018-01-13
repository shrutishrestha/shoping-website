<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>A Pen by  Eric Douglas</title>



    <!DOCTYPE html>
    <html >
    <head>
        <meta charset="UTF-8">
        <title>A Pen by  Eric Douglas</title>

        <link rel="stylesheet" href="${resource(dir: 'PD', file: 'css/style.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'PD', file: 'js/index.js')}" type="text/js">
        %{--<script href="${resource(dir: 'PD', file: 'js/index.js')}" type="text/javascript" ></script>--}%

<script src="${resource(dir: 'PD', file: 'js/index.js')}" type="text/javascript"></script>






    </head>

    <body>
    <button onclick="checkValue()">Try it</button>

    <script>myfunction()
    function myfunction() {
        document.getElementsById("llll").innerHTML = "welcome";</script>
    <p id="demo"></p>
  <div id="llll"></div>
    <input type="button" class="remove-item" data-url="${createLink(action: 'home', controller: 'customer')}" value="GO" />
</body>
</html>
    %{--<html lang="pt-br">--}%
    %{--<head>--}%
        %{--<meta charset="UTF-8">--}%
        %{--<title>Aprenda AngularJS - Formulário de Pedido</title>--}%

        %{--<link href="http://fonts.googleapis.com/css?family=Cookie|Open+Sans:400,700" rel="stylesheet">--}%

        %{--<!-- Arquivo CSS principal -->--}%
        %{--<link rel="stylesheet" href="style.css">--}%

        %{--<!--[if lt IE 9]>--}%
		%{--<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>--}%
	%{--<![endif]-->--}%

    %{--</head>--}%

    %{--<!-- Declare uma nova aplicação AngularJS e associe o controlador -->--}%
    %{--<body ng-app ng-controller="OrderFormController" onload="tog(ss)">--}%
    %{--<form>--}%

        %{--<h1>Serviços</h1>--}%

        %{--<ul>--}%
            %{--<!-- Percorre o array 'services', atribuindo um manipulador click, e defini ou remove a classe css "active" se necessário -->--}%
            %{--<li ng-repeat="service in services" ng-click="toggleActive(service)" ng-class="{ active:service.active }">--}%

                %{--<!-- Note o uso do 'current filter', que vai formatar o preço -->--}%
                %{--{{ service.name }} <span>{{ service.price | currency: "R$ " }}</span>--}%
            %{--</li>--}%
        %{--</ul>--}%

        %{--<div class="total">--}%
            %{--<!-- Calcule o preço total de todas as escolhas de serviços. Formate isso como moeda -->--}%
            %{--Total: <span>{{ total() | currency:"R$ " }}</span>--}%
        %{--</div>--}%

    %{--</form>--}%


    %{--<!-- Include AngularJS from Google's CDN -->--}%
    %{--<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"></script>--}%
    %{--<script src="script.js"></script>--}%
    %{--</body>--}%
    %{--</html>--}%

    %{--<script src="js/index.js"></script>--}%


    %{--<g:javascript>alert('hello')</g:javascript>--}%

    %{--</body>--}%
    %{--</html>--}%

    %{--<link rel="stylesheet" href="css/style.css">--}%




%{--</head>--}%

%{--<body>--}%

%{--<html lang="pt-br">--}%
%{--<head>--}%
    %{--<meta charset="UTF-8">--}%
    %{--<title>Aprenda AngularJS - Formulário de Pedido</title>--}%

    %{--<link href="http://fonts.googleapis.com/css?family=Cookie|Open+Sans:400,700" rel="stylesheet">--}%

    %{--<!-- Arquivo CSS principal -->--}%
    %{--<link rel="stylesheet" href="style.css">--}%

    %{--<!--[if lt IE 9]>--}%
		%{--<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>--}%
	%{--<![endif]-->--}%

%{--</head>--}%

%{--<!-- Declare uma nova aplicação AngularJS e associe o controlador -->--}%
%{--<body ng-app ng-controller="OrderFormController">--}%
%{--<form>--}%

    %{--<h1>Serviços</h1>--}%

    %{--<ul>--}%
        %{--<!-- Percorre o array 'services', atribuindo um manipulador click, e defini ou remove a classe css "active" se necessário -->--}%
        %{--<li ng-repeat="service in services" ng-click="toggleActive(service)" ng-class="{ active:service.active }">--}%

            %{--<!-- Note o uso do 'current filter', que vai formatar o preço -->--}%
            %{--{{ service.name }} <span>{{ service.price | currency: "R$ " }}</span>--}%
        %{--</li>--}%
    %{--</ul>--}%

    %{--<div class="total">--}%
        %{--<!-- Calcule o preço total de todas as escolhas de serviços. Formate isso como moeda -->--}%
        %{--Total: <span>{{ total() | currency:"R$ " }}</span>--}%
    %{--</div>--}%

%{--</form>--}%

%{--<!-- Include AngularJS from Google's CDN -->--}%
%{--<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"></script>--}%
%{--<script src="script.js"></script>--}%
%{--</body>--}%
%{--</html>--}%

%{--<script src="js/index.js"></script>--}%




%{--</body>--}%
%{--</html>--}%
