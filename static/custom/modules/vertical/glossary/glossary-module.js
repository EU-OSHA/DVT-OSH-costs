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
    var module = angular.module('glossary', ['ui.router', configModule.name]);
    module.config(function ($stateProvider, configService, $controllerProvider, $urlRouterProvider, $uiViewScrollProvider) {

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
            }
        });

    });

    return module;
});