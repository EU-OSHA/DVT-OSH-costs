define(function (require) {
    'use strict';

    var angular = require('common-ui/angular'),
        configModule = require('horizontal/config/config-module');

    /**
     * @ngdoc overview
     * @name all-ages.footerPages
     * @requires ui.router
     * @requires configModule
     */
    var module = angular.module('footerPages', ['ui.router', 'ui.router.metatags', configModule.name]);

    module.config(function ($stateProvider, configService, $controllerProvider, $urlRouterProvider) {
        
        // Literals / i18n
        var i18n = configService.getLiterals();

        $urlRouterProvider.otherwise("/404");
        $stateProvider.state('legal-notice', {
            url: "/legal-notice",
            views: {
                "content-main": {
                    templateUrl: configService.getVerticalTplPath("footer-pages", "legal-notice"),
                    controller: 'FooterPagesController',
                    resolve: configService.dynamicallyRegisterController($controllerProvider,'vertical/footer-pages/FooterPagesController', 'footer-pages', 'FooterPagesController')
                }
            },
            metaTags: {
                title: i18n.L9 +  " - OSH costs - Data Visualisation Tool - European Agency for Safety and Health at Work",
                description: i18n.L9,
            }
        });

        $stateProvider.state('accessibility', {
            url: "/accessibility",
            views: {
                "content-main": {
                    templateUrl: configService.getVerticalTplPath("footer-pages", "accessibility"),
                    controller: 'FooterPagesController',
                    resolve: configService.dynamicallyRegisterController($controllerProvider, 'vertical/footer-pages/FooterPagesController', 'footer-pages', 'FooterPagesController')
                }
            },
            metaTags: {
                title: i18n.L10 +  " - OSH costs - Data Visualisation Tool - European Agency for Safety and Health at Work",
                description: i18n.L10,
            }
        });

        $stateProvider.state('privacy-policy', {
            url: "/privacy-policy",
            views: {
                "content-main": {
                    templateUrl: configService.getVerticalTplPath("footer-pages", "privacy-policy"),
                    controller: 'FooterPagesController',
                    resolve: configService.dynamicallyRegisterController($controllerProvider, 'vertical/footer-pages/FooterPagesController', 'footer-pages', 'FooterPagesController')
                }
            },
            metaTags: {
                title: i18n.L8 +  " - OSH costs - Data Visualisation Tool - European Agency for Safety and Health at Work",
                description: i18n.L8,
            }
        });

        $stateProvider.state('site-map', {
            url: "/site-map",
            views: {
                "content-main": {
                    templateUrl: configService.getVerticalTplPath("footer-pages", "sitemap"),
                    controller: 'FooterPagesController',
                    resolve: configService.dynamicallyRegisterController($controllerProvider, 'vertical/footer-pages/FooterPagesController', 'footer-pages', 'FooterPagesController')
                }
            },
            metaTags: {
                title: i18n.L7 +  " - OSH costs - Data Visualisation Tool - European Agency for Safety and Health at Work",
                description: i18n.L7,
            }
        });

        $stateProvider.state('404', {
            url: "/404",
            views: {
                "content-main": {
                    templateUrl: configService.getVerticalTplPath("footer-pages", "404")
                }
            },
            metaTags: {
                title: "Page not Found" +  " - OSH costs - Data Visualisation Tool - European Agency for Safety and Health at Work",
                description: "Page not Found",
            }
        });

    });
    
    return module;
});
