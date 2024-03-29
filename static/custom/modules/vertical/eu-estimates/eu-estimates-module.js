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
    var module = angular.module('eu-estimates', ['ui.router', 'ui.router.metatags', configModule.name]);
    module.config(function ($stateProvider, configService, $controllerProvider, $urlRouterProvider, $uiViewScrollProvider) {

        // Literals / i18n
        var i18n = configService.getLiterals();

        $uiViewScrollProvider.useAnchorScroll();

        $stateProvider.state('daly-comparison', {
            url: "/daly-comparison",
            params: {

            },
            views: {
                "content-main": {
                    templateUrl: configService.getVerticalTplPath("eu-estimates/daly-comparison", "daly-comparison"),
                    controller: 'DalyComparisonController',
                    resolve: configService.dynamicallyRegisterController($controllerProvider, 'vertical/daly-comparison/DalyComparisonController', 'daly-comparison', 'DalyComparisonController')
                }
            },
            metaTags: {
                title: i18n.L95 +  " - " + i18n.L135,
                description: i18n.L60,
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
            },
            metaTags: {
                title: i18n.L88 +  " - " + i18n.L135,
                description: i18n.L92,
            }
        });

    });

    module.factory('countriesComparisonService', require('vertical/countries-comparison/services/CountriesComparisonService'));
    module.factory('DalyComparisonService', require('vertical/daly-comparison/services/DalyComparisonService'));
    module.factory('pieChartLegendService', require('vertical/eu-analysis-illness/services/PieChartLegendService'));

    return module;
});
