define(function (require) {
    'use strict';

    var angular = require('common-ui/angular'),
        configModule = require('horizontal/config/config-module'),
        homeModule = require('vertical/home/home-module'),
        euEstimatesModule = require('vertical/eu-estimates/eu-estimates-module'),
        globalEstimatesModule = require('vertical/global-estimates/global-estimates-module'),
        aboutEstimatesModule = require('vertical/about-estimates/about-estimates-module'),
        glossaryModule = require('vertical/glossary/glossary-module'),
        directivesModule = require('horizontal/directives/directives-module'),
        chartingModule =  require('horizontal/directives/charting-module'),
        footerPagesModule = require('vertical/footer-pages/footer-pages-module');

    require('common-ui/angular-ui-router');
    require('common-ui/ui-router-metatags');
    require('common-ui/angular-sanitize');
    require('common-ui/bootstrap');
    require('common-ui/angular-jquery');
    require('common-ui/angular-ui-bootstrap');
    require('common-ui/angularjs-socialshare');

    /**
     * @ngdoc overview
     * @name osha-dvt-ilo
     * @requires ui.bootstrap
     * @requires ui.router
     * @requires ngSanitize
     * @requires mgcrea.bootstrap.affix
     * @requires homeModule
     * @requires configModule
     * @requires directivesModule
     * @requires footerPagesModule
     */
    var app = angular.module('dvt', ['ui.bootstrap',
                                     'ui.router',
                                     'ngSanitize',
                                     homeModule.name,
                                     euEstimatesModule.name,
                                     globalEstimatesModule.name,
                                     aboutEstimatesModule.name, 
                                     glossaryModule.name,
                                     configModule.name,
                                     directivesModule.name,
                                     chartingModule.name,
                                     footerPagesModule.name,
                                     '720kb.socialshare'
                                    ]);

    /*gtranslator info*/
    var gtranslatorinfo = angular.element(".gtranslator-info");
    var gtranslatorinfo = gtranslatorinfo.offset();

    angular.element(document).click(function(e) {
        if(!$(e.target).closest('#gTranslate-modal').length && !$(e.target).is(angular.element('#gTranslate-modal-link'))) {
            if (!$(e.target).is($('span.gtranslator-info'))) {
                $("#gTranslate-modal").fadeOut('fast');
            }
        }
    });
    
    angular.element(".gtranslator-info").mouseover(function(){
        angular.element("#gTranslate-modal").fadeIn('fast');
    });
    angular.element("#gTranslate-modal").mouseleave(function(){
        angular.element("#gTranslate-modal").fadeOut('fast');
    });
    /*end gtranslator*/


    /**
     * @ndoc function
     * @param $logProvider
     * @param configService
     * @description
     * Setter for the debug config
     */
    function setDebugMode($logProvider, configService) {
        $logProvider.debugEnabled(configService.isDebugMode());
    }
    setDebugMode.$inject = ['$logProvider', 'configService'];
    angular.module('dvt').config(setDebugMode);


    /* HORIZONTAL SERVICES */
    //TODO standardize service names
    app.factory('mapProvider',require('horizontal/services/mapProvider'));
    app.factory('dataService', require('horizontal/services/dataService'));
    app.factory('dvtUtils', require('horizontal/services/utils'));
    app.factory('plotsProvider',require('horizontal/services/plotsProvider'));
    app.factory('exportService', require('horizontal/graphic/services/exportService'));
    app.factory('maximize', require('horizontal/graphic/services/maximizeService'));

    require(["dojo/domReady!"], function (document) {
        angular.bootstrap(document, ['dvt']);
    });
});
