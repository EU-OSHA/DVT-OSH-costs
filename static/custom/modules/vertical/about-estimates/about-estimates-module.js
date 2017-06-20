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
    var module = angular.module('about-estimates', ['ui.router', 'ui.router.metatags', configModule.name]);
    module.config(function ($stateProvider, configService, $controllerProvider, $urlRouterProvider, $uiViewScrollProvider) {

        // Literals / i18n
        var i18n = configService.getLiterals();

        $uiViewScrollProvider.useAnchorScroll();

        $stateProvider.state('about-estimates', {
            url: "/about-estimates",
            params: {

            },
            views: {
                "content-main": {
                    templateUrl: configService.getVerticalTplPath("about-estimates", "about-estimates"),
                    controller: 'AboutEstimatesController',
                    resolve: configService.dynamicallyRegisterController($controllerProvider, 'vertical/about-estimates/AboutEstimatesController', 'about-estimates', 'AboutEstimatesController')
                }
            },
            metaTags: {
                title: i18n.L6 +  " - OSH costs - Data Visualisation Tool - European Agency for Safety and Health at Work",
                description: i18n.L6,
            }
        });

    });

    return module;
});