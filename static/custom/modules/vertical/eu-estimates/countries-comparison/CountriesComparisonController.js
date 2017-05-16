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
    
    function controller($scope, $window, $stateParams, $state, $log, CountriesComparisonService, dvtUtils, dataService, plotsProvider, $document, configService) {
        $scope.title ="Countries Comparison";

        $scope.dashboard = {};
        $scope.dashboard = {
            parameters: {
                "pColorEU": dvtUtils.getColorCountry(),
                "pColorEU2": dvtUtils.getEUColor(2)
            }
        };

        $scope.graphWidth = jQuery('li.item.active').width();

        $scope.orientation = jQuery(window).width() > 425? "vertical" : "horizontal";

        angular.element($window).bind('resize', function() {
            $scope.graphWidth = jQuery('li.item.active').width();

            $scope.orientation = jQuery(window).width() > 425? "vertical" : "horizontal";

            $scope.$apply();
            $state.reload();
        });

        $scope.stories = [
            //0
            {
                plots: CountriesComparisonService.getStoryMainPlots(),
            }
        ];

        $scope.checked = "checked-16";

        $scope.status = 'ready';
    }
    
    controller.$inject = ['$scope', '$window', '$stateParams', '$state', '$log', 'countriesComparisonService', 'dvtUtils', 'dataService', 'plotsProvider', '$document', 'configService'];
    return controller;
    
});