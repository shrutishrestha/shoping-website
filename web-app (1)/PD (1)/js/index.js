function OrderFormController ($scope) {

    // Defina o modelo de propriedades. O View vai fazer o loop
    // através do array services e gerar um elemento li
    // para cada um dos itens.

    $scope.services = [
        {
            name: 'Desenvolvimento Web',
            price: 3000,
            active: true
        },
        {
            name: 'Design',
            price: 2000,
            active: false
        },
        {
            name: 'Integração',
            price: 2500,
            active: false
        },
        {
            name: 'Treinamento',
            price: 2200,
            active: false
        }
    ];

    $scope.tog = function (ss) {
        alert("hey")

    }


    $scope.toggleActive = function (s) {
        s.active = !s.active;
    };


    // Método útil para calcular o preço total
    $scope.total = function () {

        var total = 0;

        // Uso o método auxiliar do Angular 'forEach'
        // para iterar o array services

        angular.forEach($scope.services, function (s) {
            if (s.active) {
                total += s.price;
            }
        });

        return total;
    };
}




function checkValue() {
    alert("I am an alert box!");
}
