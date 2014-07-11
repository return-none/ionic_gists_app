app = angular.module 'GistApp', ['ionic', 'GistApp.controllers', 'GistApp.providers']

app.config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
    .state 'index',
        url: '/'
        templateUrl: 'partials/index.html'
        controller: 'IndexController'

    .state 'show',
        url: '/:id'
        templateUrl: 'partials/show.html'
        controller: 'ShowController'

    $urlRouterProvider.when '', '/'
