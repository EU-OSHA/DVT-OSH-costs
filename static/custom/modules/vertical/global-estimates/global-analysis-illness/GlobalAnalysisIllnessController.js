/**
 * @ngdoc controller
 * @name ilo.eu-estimates.controller:GlobalEstimatesController
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
    
    function controller($scope, $window, $stateParams, $state, $log, dvtUtils, dataService, globalAnalysisIllnessService, plotsProvider, $document, configService) {
        $scope.title ="Global Analysis by Illness";

        // CDA
        $scope.cda =  configService.getIloCda();

        // Literals / i18n
        $scope.i18n = configService.getLiterals();
        $scope.i18n_global = require('json!vertical/global-analysis-illness/i18n');

        // Get chart colors
        $scope.illnessColors = dvtUtils.getIllnessColors();

        // 'Legends' logic
       globalAnalysisIllnessService.getDataSet_Country_Type_value().then(function (dataset) {
            var countries = {};
            var types = {};
            var cont = 0;
            var oldcountry = '';
            var obj = {};
            dataset.data.resultset.forEach(function (country) {
                if (oldcountry == '' || oldcountry != country[0]) {
                    countries["" + country[0]] = {};
                    obj = {};
                }
                obj[country[1]] = country[2];
                countries[country[0]] = obj;
                oldcountry = country[0];
            });


            $scope.countries = countries;
            $log.debug($scope.countries);
            console.log("DAVID DEV");
            console.log($scope.countries);
        }).catch (function (err) {
            $log.warn("getAllLegenddata request fail!");
        });
    }
    
    controller.$inject = ['$scope', '$window', '$stateParams', '$state', '$log', 'dvtUtils', 'dataService', 'globalAnalysisIllnessService', 'plotsProvider', '$document', 'configService'];
    return controller;
    
});