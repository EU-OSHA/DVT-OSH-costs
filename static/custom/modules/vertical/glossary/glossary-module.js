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
    var module = angular.module('glossary', ['ui.router', 'ui.router.metatags', configModule.name]);
    module.config(function ($stateProvider, configService, $controllerProvider, $urlRouterProvider, $uiViewScrollProvider) {

        // Literals / i18n
        var i18n = configService.getLiterals();

        $uiViewScrollProvider.useAnchorScroll();

        $stateProvider.state('glossary', {
            url: "/glossary",
            params: {

            },
            views: {
                "content-main": {
                    templateUrl: configService.getVerticalTplPath("glossary", "glossary"),
                    controller: 'GlossaryController',
                    resolve: configService.dynamicallyRegisterController($controllerProvider, 'vertical/glossary/GlossaryController', 'glossary', 'GlossaryController')
                }
            },
            metaTags: {
                title: i18n.L5 +  " - " + i18n.L135,
                description: i18n.L112,
            }
        });

    });

    return module;
});