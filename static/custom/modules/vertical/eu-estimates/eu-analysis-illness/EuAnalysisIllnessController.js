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

    function controller($scope, $rootScope, $stateParams, $state, PieChartLegendService, dvtUtils, dataService, plotsProvider, mapProvider, $log,configService, $document, $compile, $sce, $interval) {

        // CDA
        $scope.cda =  configService.getIloCda();

        // Literals / i18n
        $scope.i18n = configService.getLiterals();
        $scope.i18n_illness = require('json!vertical/eu-estimates/eu-analysis-illness/i18n');

        $scope.to_trusted = function(html_code) {
            return $sce.trustAsHtml(html_code);
        }

        angular.element(document).on('click', function(e) {
            configService.termClick(e, $rootScope.hasAgreedCookies);
        });

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
                obj[country[1]] = country[2];
                countries[country[0]] = obj;
                oldcountry = country[0];
            });


            $scope.countries = countries;
            $log.debug($scope.countries);
        }).catch (function (err) {
            $log.warn("getAllLegenddata request fail!");
        });

        $scope.pauseCarousel = function()
        {
            angular.element('[data-toggle="popover"]').popover({
                html: true,
                template: '<div class="tooltip" role="tooltip"><div class="tooltip-arrow"></div><div class="clear"><a href:"javascript:" class="popover-close"><i class="fa fa-close pull-right" aria-hidden="true"></i></a></div><div class="popover-content tooltip-inner"></div></div>',
                content : function() {
                    return $(this).attr('data-original-title');
                },
                placement: 'top'
            });
        }

        $scope.bootstrapLoaded = false;
        $scope.interval = $interval(function()
            {
                if (angular.element('[data-toggle="popover"]').popover != undefined)
                {
                    $scope.bootstrapLoaded = true;
                    $scope.pauseCarousel();
                    $scope.stopInterval();
                }                
            }, 1000);

        $scope.stopInterval = function()
        {
            if (angular.isDefined($scope.interval))
            {
                $interval.cancel($scope.interval);
                $scope.interval = undefined;
            }
        }


    }

    controller.$inject = ['$scope', '$rootScope', '$stateParams', '$state', 'pieChartLegendService', 'dvtUtils', 'dataService', 'plotsProvider','mapProvider', '$log','configService','$document', '$compile', '$sce', '$interval'];
    return controller;

});
