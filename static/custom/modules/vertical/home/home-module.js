define(function (require) {
    'use strict';

    var angular = require('common-ui/angular'),
        configModule = require('horizontal/config/config-module');

    //require('common-ui/angularjs-slider');

    /**
     * @ngdoc overview
     * @name osha-dvt-ilo.home
     * @requires ui.router
     * @requires configModule
     */
    var module = angular.module('home', ['ui.router', 'ui.router.metatags', configModule.name]);

    /* List of states of the  module */
    module.config(function ($stateProvider, configService, $urlRouterProvider, $controllerProvider, $uiViewScrollProvider) {

        $uiViewScrollProvider.useAnchorScroll();
        
        $urlRouterProvider.when('', '/');
        $stateProvider.state('home', {
            url: "/",
            views: {
                "content-main": {
                    templateUrl: configService.getVerticalTplPath("home", "home"),
                    controller: 'HomeController',
                    resolve: configService.dynamicallyRegisterController($controllerProvider, 'vertical/home/HomeController', 'home', 'HomeController')
                }
            },
            metaTags: {
                title: "OSH costs - Data Visualisation Tool - European Agency for Safety and Health at Work",
                description: "OSH costs - Data Visualisation Tool - European Agency for Safety and Health at Work",
            }
        });
    });    
    
    return module;
});
