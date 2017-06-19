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
    var module = angular.module('global-estimates', ['ui.router', 'ui.router.metatags', configModule.name]);
    module.config(function ($stateProvider, configService, $controllerProvider, $urlRouterProvider, $uiViewScrollProvider) {

        // Literals / i18n
        var i18n = configService.getLiterals();

        $uiViewScrollProvider.useAnchorScroll();

        $stateProvider.state('global-estimates', {
            url: "/global-estimates",
            params: {

            },
            views: {
                "content-main": {
                    templateUrl: configService.getVerticalTplPath("global-estimates", "global-estimates"),
                    controller: 'GlobalEstimatesController',
                    resolve: configService.dynamicallyRegisterController($controllerProvider, 'vertical/global-estimates/GlobalEstimatesController', 'global-estimates', 'GlobalEstimatesController')
                }
            },
            metaTags: {
                title: i18n.L1 +  " - OSH costs - Data Visualisation Tool - European Agency for Safety and Health at Work",
                description: i18n.L38,
            }
        });

    });

    module.factory('globalEstimatesService', require('vertical/global-estimates/services/GlobalEstimatesService'));

    return module;
});
