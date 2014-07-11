controllers = angular.module 'GistApp.controllers', []

class IndexController
    @$inject: ['$scope']
    constructor: (@scope) ->
        @scope.tasks = [
                          {
                            id: 1,
                            text: 'Collect coins'
                          },
                          {
                            id: 2,
                            text: 'Eat mushrooms'
                          },
                          {
                            id: 3,
                            text: 'Get high enough to grab the flag'
                          },
                          {
                            id: 4,
                            text: 'Find the Princess'
                          }
                       ]

controllers.controller 'IndexController', IndexController