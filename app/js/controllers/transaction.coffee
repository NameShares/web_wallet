angular.module("app").controller "TransactionController", ($scope, $location, $stateParams, $state, BlockchainAPI, Utils) ->
    
    $scope.id = $stateParams.id

    BlockchainAPI.get_transaction($scope.id).then (result) ->
        console.log result
        $scope.t = result
