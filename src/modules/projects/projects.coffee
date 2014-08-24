class ProjectsRoutes extends Config
    constructor: ($routeProvider) ->
        $routeProvider
            .when '/projects',
                templateUrl: 'modules/projects/templates/projects.html',
                controller: 'projectsController'


class Projects extends Controller
    
    constructor: ($scope, $localStorage) ->
        
        $scope.projects = $localStorage.projects || [ domain: 'default.dev' ]

        # or better solution using service
        $scope.$watch '[projects]', ->
            $localStorage.projects = $scope.projects
        , true
        
        $scope.add = ->
            $scope.projects.push domain: $scope.domain
            $scope.domain = ''
        
        $scope.remove = ($index) ->
            $scope.projects.splice $index, 1
    
