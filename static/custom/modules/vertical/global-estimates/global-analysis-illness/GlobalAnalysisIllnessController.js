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
            angular.element('[data-toggle="popover"]').popover({
                html: true,
                template: '<div class="tooltip" role="tooltip"><div class="tooltip-arrow"></div><div class="clear"><a href:"javascript:" class="popover-close"><i class="fa fa-close pull-right" aria-hidden="true"></i></a></div><div class="popover-content tooltip-inner"></div></div>',
                content : function() {
                    return $(this).attr('data-original-title');
                },
                placement: 'top'
            });
            return $sce.trustAsHtml(html_code);
        }

        angular.element(document).on('click', function(e) {
            angular.element('[data-toggle=popover]').each(function () {
                if ((!angular.element(e.target).is('[data-toggle=popover]')
                    && angular.element(e.target).parents('div.popover').length == 0)
                    || angular.element(e.target).is('a.popover-close i')) {
                    angular.element(this).popover('hide');
                } else if (angular.element(e.target).is('[data-toggle=popover]') && !angular.element(this).is(e.target)) {
                    angular.element(this).addClass('popover-hidden');
                    angular.element(this).popover('hide');
                } else if (angular.element(e.target).is('[data-toggle=popover]') && angular.element(this).is(e.target)) {
                    if (angular.element(this).hasClass('popover-hidden')) {
                        _paq.push(['trackEvent', 'termClick', 'termClick', angular.element(this).text(), 1]);
                        angular.element(this).removeClass('popover-hidden');
                    }
                }
            });
        });

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
