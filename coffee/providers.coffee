providers = angular.module "GistApp.providers", ["ngResource"]

providers.factory "GistsFactory", ($resource) ->
    $resource "https://api.github.com/gists/:id"
