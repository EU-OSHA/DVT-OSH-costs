define(function (require) {
    'use strict';

    var angular = require('common-ui/angular'),
        configModule = require('horizontal/config/config-module');

    /**
     * @ngdoc overview
     * @name ilo.eu-estimates
     * @requires ui.router
     * @requires configModule
     */
    var module = angular.module('eu-estimates', ['ui.router', configModule.name]);
    module.config(function ($stateProvider, configService, $controllerProvider, $urlRouterProvider, $uiViewScrollProvider) {

        $uiViewScrollProvider.useAnchorScroll();

        $stateProvider.state('countries-comparison', {
            url: "/countries-comparison",
            params: {

            },
            views: {
                "content-main": {
                    templateUrl: configService.getVerticalTplPath("eu-estimates/countries-comparison", "countries-comparison"),
                    controller: 'CountriesComparisonController',
                    resolve: configService.dynamicallyRegisterController($controllerProvider, 'vertical/countries-comparison/CountriesComparisonController', 'countries-comparison', 'CountriesComparisonController')
                }
            }
        });

        $stateProvider.state('eu-analysis-illness', {
            url: "/eu-analysis-illness",
            params: {

            },
            views: {
                "content-main": {
                    templateUrl: configService.getVerticalTplPath("eu-estimates/eu-analysis-illness", "eu-analysis-illness"),
                    controller: 'EuAnalysisIllnessController',
                    resolve: configService.dynamicallyRegisterController($controllerProvider, 'vertical/eu-analysis-illness/EuAnalysisIllnessController', 'eu-analysis-illness', 'EuAnalysisIllnessController')
                }
            }
        });

    });

    module.factory('countriesComparisonService', require('vertical/countries-comparison/services/CountriesComparisonService'));
    module.factory('pieChartLegendService', require('vertical/eu-analysis-illness/services/PieChartLegendService'));

    return module;
});
