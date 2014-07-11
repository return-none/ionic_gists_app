controllers = angular.module 'GistApp.controllers', []

class IndexController
    @$inject: ['$scope', 'GistsFactory']
    constructor: (@scope, GistsFactory) ->
        @scope.gists = GistsFactory.query()


class ShowController
    @$inject: ['$scope', '$stateParams', 'GistsFactory']
    constructor: (@scope, $stateParams, GistsFactory) ->
        @scope.gist = GistsFactory.get {id: $stateParams.id}
        @scope.save = =>
            @scope.gist.$save()

controllers.controller 'IndexController', IndexController
controllers.controller 'ShowController', ShowController
