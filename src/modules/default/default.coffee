class Default extends Controller
    constructor: ($scope) ->
        $scope.modules = [
            name: 'Users'
            links: [
                target: '#/users'
                text: 'Users'
            ,
                target: '#/users/add'
                text: 'Users / Add'
            ]
        ]
        
        $scope.isCollapsed = true;
