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
    
    function controller($scope, $window, $stateParams, $state, $log, dvtUtils, dataService, globalAnalysisIllnessService, plotsProvider, $document, configService, $sce) {
        $scope.title ="Global Analysis by Illness";

        // CDA
        $scope.cda =  configService.getIloCda();

        // Literals / i18n
        $scope.i18n = configService.getLiterals();
        $scope.i18n_global = require('json!vertical/global-analysis-illness/i18n');

        $scope.to_trusted = function(html_code) {
            angular.element('[data-toggle="tooltip"]').tooltip();
            return $sce.trustAsHtml(html_code);
        }

        // Get chart colors
        $scope.illnessColors = dvtUtils.getIllnessColors();

        // Regions Select
        dataService.getCountriesRegion().then(function(dataset) {
            var countries = {};
            dataset.data.resultset.forEach(function(country){
                countries["" + country[0]] = {
                    name: country[0],
                    region: country[1]
                }
            });
            $scope.countriesSelect = countries;
        });

        // Behaviour when Countries Select value changes
        $scope.selectChange = function() {
            var sections = angular.element('div.country-wrapper');
            angular.element('div.country-wrapper').removeClass('selected');
            for (var i = 0; i < sections.length; i++) {
                if(angular.element(' h3', sections[i]).text() == $scope.country.region) {
                    angular.element(sections[i]).addClass('selected');
                }                
            }
        }

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
        }).catch (function (err) {
            $log.warn("getAllLegenddata request fail!");
        });

        angular.element('div#modalChart').click(function() {
            angular.element('div#modalChart').modal('hide');
        }).children().click(function(e){
            if (!$(e.target).is('a')) {
                if (!$(e.target).is('button') && !$(e.target).is('font')) {
                    if (!$(e.target).parent().is('button') && !$(e.target).parent().hasClass('close')){
                        return false;
                    }
                }else {
                    if (!$(e.target).is('button') && !$(e.target).is('font') && !$(e.target).hasClass('close')) {
                        return false;
                    }
                }     
            }            
        });
    }
    
    controller.$inject = ['$scope', '$window', '$stateParams', '$state', '$log', 'dvtUtils', 'dataService', 'globalAnalysisIllnessService', 'plotsProvider', '$document', 'configService', '$sce'];
    return controller;
    
});