class Routes extends Config
    constructor: ($routeProvider) ->
        $routeProvider
            .when '/hello',
                templateUrl: 'modules/hello/templates/hello.html'
                controller: 'helloController'

class Hello extends Controller
    constructor: ($scope) ->
        $scope.user =
            username: 'ball6847'
            firstname: "Porawit"
            lastname: "Poboonma"
