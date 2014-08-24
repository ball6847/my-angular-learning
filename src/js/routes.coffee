class Routes extends Config
    constructor: ($routeProvider) ->
        $routeProvider
            .when '/',
                templateUrl: 'home'
            .otherwise
                redirectTo: '/'
