/**
 * Created by iker on 23/02/17.
 */
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
    var module = angular.module('newpage', ['ui.router', configModule.name]);

    /* List of states of the  module */
    module.config(function ($stateProvider, configService, $urlRouterProvider, $controllerProvider) {

        $urlRouterProvider.when('', '/');
        $stateProvider.state('newpage', {
            url: "/NewPage",
            views: {
                "content-main": {
                    templateUrl: configService.getVerticalTplPath("newpage", "mynewpage"),
                    controller: 'NewPageController',
                    resolve: configService.dynamicallyRegisterController($controllerProvider, 'vertical/newpage/NewPageController', 'mynewpage', 'NewPageController')
                }
            }
        });
    });



    return module;
});