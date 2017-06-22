/**
 * @ngdoc controller
 * @name ilo.eu-estimates.controller:EuAnalysisIllnessController
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

    function controller($scope, $stateParams, $state, PieChartLegendService, dvtUtils, dataService, plotsProvider, mapProvider, $log,configService, $document, $compile) {
        // CDA
        $scope.cda =  configService.getIloCda();

        // Literals / i18n
        $scope.i18n = configService.getLiterals();
        $scope.i18n_illness = require('json!vertical/eu-estimates/eu-analysis-illness/i18n');

        $scope.dashboard = {
            promises: $scope.promises,
            parameters: {},
            plots: plotsProvider.getDonoughtPlots(3),
        };

        // Get chart colors
        $scope.illnessColors = dvtUtils.getIllnessColors();

        // 'Legends' logic
        PieChartLegendService.getDataSet_Country_Type_value().then(function (dataset) {
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
                obj[country[1]] = country[2] + '%';
                countries[country[0]] = obj;
                oldcountry = country[0];
            });


            $scope.countries = countries;
            $log.debug($scope.countries);
        }).catch (function (err) {
            $log.warn("getAllLegenddata request fail!");
        });


    }
    
    controller.$inject = ['$scope', '$stateParams', '$state', 'pieChartLegendService', 'dvtUtils', 'dataService', 'plotsProvider','mapProvider', '$log','configService','$document', '$compile'];
    return controller;
    
});