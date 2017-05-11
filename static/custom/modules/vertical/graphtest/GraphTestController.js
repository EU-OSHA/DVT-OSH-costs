/**
 * @ngdoc controller
 * @name osha-dvt-ilo.home.controller:homeController
 * @requires $scope
 * @requires $stateParams
 * @requires $state
 * @requires $document
 * @description
 * ############################################
 */
define(function (require) {
    'use strict';

    function controller($scope, $stateParams, $state, $log, GraphTestService, dvtUtils, dataservice, plotsProvider, $document, configService) {

        $scope.title ="Graph Test Page";

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
                plots: GraphTestService.getStoryMainPlots(),
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
                : dataset.datum.atoms.category.value;        }

        var maxModeCriteriaText =  function(dataset) {
            return dataset.datum.atoms.category.value
        }

        $scope.status = 'ready';
    }


    controller.$inject = ['$scope', '$stateParams', '$state', '$log', 'graphTestService', 'dvtUtils', 'dataService', 'plotsProvider', '$document', 'configService'];
    return controller;
});
