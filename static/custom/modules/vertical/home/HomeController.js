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

    
        // Literals / i18n
        var i18n = configService.getLiterals();
        $scope.i18n = i18n;
        var i18n_home = require('json!vertical/home/i18n');
        
        $scope.goto = function (estado) {
            $state.go(estado, {});
        };
    
        // Carrousel slides
        $scope.slides = [
            {text: i18n[i18n_home.slider1.text], image: configService.getImagesPath()+ i18n_home.slider1.image},
            {text: i18n[i18n_home.slider2.text], image: configService.getImagesPath()+ i18n_home.slider2.image},
            {text: i18n[i18n_home.slider3.text], image: configService.getImagesPath()+ i18n_home.slider3.image}
        ];

        // Charts
        $scope.chartDeath = {title: i18n[i18n_home.chartDeath.title], image: configService.getImagesPath()+ i18n_home.chartDeath.image};
        $scope.chartDaly = {title: i18n[i18n_home.chartDaly.title], message: i18n[i18n_home.chartDaly.message], image: configService.getImagesPath()+ i18n_home.chartDaly.image};
    
       $scope.status = 'ready';
    }
    
    controller.$inject = ['configService', 'dvtUtils', '$scope', '$stateParams', '$state','$document', '$log'];
    return controller;
});
