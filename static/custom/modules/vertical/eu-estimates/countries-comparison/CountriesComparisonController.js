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
        }

        $scope.stories = [
            //0
            {
                plots: CountriesComparisonService.getStoryMainPlots(),
            }
        ];

        var redirect = function () {

            var data = this.id!=undefined?this.id:this.getCategory();

            $scope.pCountry1 = data && data != 'undefined' ? data : "EU";
            $scope.pCountry2 = $scope.pCountry2 == data ? "EU": $scope.pCountry2 ;

            $state.go($state.current.name, {
                pCountry1: $scope.pCountry1,
                pCountry2: $scope.pCountry2
            });
        };

        // Conditional criteria
        var normalModeCriteriaText = function (dataset) {
            return dataset.datum.atoms.category2.value != -1?
                dataset.datum.atoms.category2.value.split("~")[0]
                : dataset.datum.atoms.category.value;
        }

        var maxModeCriteriaText =  function(dataset) {
            return dataset.datum.atoms.category.value;
        }

        $scope.status = 'ready';
    }
    
    controller.$inject = ['$scope', '$stateParams', '$state', '$log', 'countriesComparisonService', 'dvtUtils', 'dataService', 'plotsProvider', '$document', 'configService'];
    return controller;
    
});