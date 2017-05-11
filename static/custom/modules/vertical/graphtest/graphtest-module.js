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
    var module = angular.module('graphtest', ['ui.router', configModule.name]);

    /* List of states of the  module */
    module.config(function ($stateProvider, configService, $urlRouterProvider, $controllerProvider) {

        $stateProvider.state('graphtest', {
            url: "/Graph-Test",
            views: {
                "content-main": {
                    templateUrl: configService.getVerticalTplPath("graphtest", "graphtest"),
                    controller: 'GraphTestController',
                    resolve: configService.dynamicallyRegisterController($controllerProvider, 'vertical/graphtest/GraphTestController', 'graphtest', 'GraphTestController')
                }
            }
        });
    });

    module.factory('graphTestService', require('vertical/graphtest/service'));

    return module;
});
