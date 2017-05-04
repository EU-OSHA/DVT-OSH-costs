/**
 * @ngdoc controller
 * @name osha-dvt-ilo.home.controller:homeController
 * @requires $scope
 * @requires $stateParams
 * @requires $state
 * @requires $document
 * @description
 * ############################################
 */
define(function (require) {
    'use strict';
    
    function controller(configService, dvtUtils, $scope, $stateParams, $state, $document, $log) {

        $scope.dashboard = {
            parameters: {
                pYears: "2015"
            }
        };
    
        var i18n = require('json!vertical/home/i18n');
        $scope.i18n = i18n;
        
        $scope.goto = function (estado) {
            $state.go(estado, {});
        };
    
        $scope.slides = [
            {text: i18n.slider1.text, linkText: 'Source: '+i18n.slider1.linkText, link: i18n.slider1.link, alt: i18n.slider1.alt, image: configService.getImagesPath()+ '/slider/slider1.png'},
            {text: i18n.slider2.text, linkText: 'Source: '+i18n.slider2.linkText , link: i18n.slider2.link, alt: i18n.slider2.alt, image: configService.getImagesPath()+ '/slider/slider2.png'},
            {text: i18n.slider3.text, linkText: 'Source: '+i18n.slider3.linkText, link: i18n.slider3.link, alt: i18n.slider3.alt, image: configService.getImagesPath()+ '/slider/slider3.png'},
            {text: i18n.slider4.text, linkText: 'Source: '+i18n.slider4.linkText, link: i18n.slider4.link, alt: i18n.slider4.alt, image: configService.getImagesPath()+ '/slider/slider8.png'},
            {text: i18n.slider5.text, linkText: 'Source: '+i18n.slider5.linkText, link: i18n.slider5.link, alt: i18n.slider5.alt, image: configService.getImagesPath()+ '/slider/slider9.png'}
        ];
    
        $scope.pyramid = {
            colors : [ dvtUtils.getColorCountry(22), dvtUtils.getColorCountry(12)],
            calculations: undefined,
            plots: undefined,
            dimensions: {
                series:{
                    format:{
                        mask: '#.0'
                    }
                }
            }
        };
        $scope.status = 'ready';
    }
    
    controller.$inject = ['configService', 'dvtUtils', '$scope', '$stateParams', '$state','$document', '$log'];
    return controller;
});
