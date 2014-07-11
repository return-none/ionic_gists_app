app = angular.module 'GistApp', ['ionic', 'GistApp.controllers']

app.config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
    .state 'index',
        url: '/'
        templateUrl: 'partials/index.html'
        controller: 'IndexController'

    $urlRouterProvider.when '', '/'