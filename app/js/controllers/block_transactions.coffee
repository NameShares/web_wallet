angular.module("app").controller "BlockTransactionsController", ($scope, $location, $stateParams, $state, BlockchainAPI, Utils) ->

    $scope.transactions = []
    $scope.utils = Utils
    
    BlockchainAPI.get_block_by_number($stateParams.number).then (result) ->
        transactions = []
