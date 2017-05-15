/**
 * @ngdoc controller
 * @name ilo.eu-estimates.controller:CountriesComparisonController
 * @requires $scope
 * @requires $stateParams
 * @requires $state
 * @requires dataService
 * @requires mapProvider
 * @requires $log
 * @requires configService
 * @requires $document
 * @requires $compile
 * @description
 * ############################################
 */
define(function (require) {
    'use strict';
    
    function controller($scope, $stateParams, $state, $log, CountriesComparisonService, dvtUtils, dataService, plotsProvider, $document, configService) {
        $scope.title ="Countries Comparison";

        $scope.dashboard = {};
        $scope.dashboard = {
            parameters: {
                "pColorEU": dvtUtils.getColorCountry(),
                "pColorEU2": dvtUtils.getEUColor(2)
            }
        };

        $scope.stories = [
            //0
            {
                plots: CountriesComparisonService.getStoryMainPlots(),
            }
        ];

        $scope.checked = "checked-16";

        $scope.status = 'ready';
    }
    
    controller.$inject = ['$scope', '$stateParams', '$state', '$log', 'countriesComparisonService', 'dvtUtils', 'dataService', 'plotsProvider', '$document', 'configService'];
    return controller;
    
});