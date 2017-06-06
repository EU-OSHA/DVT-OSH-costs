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
        $scope.i18n_home = i18n_home;
        
        $scope.goto = function (estado) {
            $state.go(estado, {});
        };

        // Select Options
        $scope.select = [
            {
                id: '1',
                label: i18n.L114,
                text: i18n[i18n_home.slider1.relatedEuro],
                image: configService.getImagesPath() + i18n_home.slider1.imageEuro,
                image2: configService.getImagesPath() + i18n_home.slider1.imageEuro2                
            },{
                id: '2',
                label: i18n.L113,
                text: i18n[i18n_home.slider1.related],
                image: configService.getImagesPath()+ i18n_home.slider1.image,
                image2: configService.getImagesPath()+ i18n_home.slider1.image2
            }
        ];

        $scope.currency = $scope.select[0];
    
        // Carrousel slides
        $scope.slides = [
            {title: i18n[i18n_home.slider1.title], text: $scope.currency.text, image: $scope.currency.image, image2: $scope.currency.image2},
            {title: i18n[i18n_home.slider2.title], text: i18n[i18n_home.slider2.related], image: configService.getImagesPath()+ i18n_home.slider2.image, image2: configService.getImagesPath()+ i18n_home.slider2.image2},
            {title: i18n[i18n_home.slider3.title], text: i18n[i18n_home.slider3.related], image: configService.getImagesPath()+ i18n_home.slider3.image, image2: configService.getImagesPath()+ i18n_home.slider3.image2}
        ];

        // Charts
        $scope.chartDeath = {title: i18n[i18n_home.chartDeath.title], text: i18n[i18n_home.chartDeath.message], image: configService.getImagesPath()+ i18n_home.chartDeath.image};
        $scope.chartDaly = {title: i18n[i18n_home.chartDaly.title], text: i18n[i18n_home.chartDaly.message], image: configService.getImagesPath()+ i18n_home.chartDaly.image};

        $scope.update = function() {
            $scope.currency = $scope.currency == $scope.select[0] ? $scope.select[1] : $scope.select[0];
            $scope.slides[0].text = $scope.currency.text;
            $scope.slides[0].image = $scope.currency.image;
            $scope.slides[0].image2 = $scope.currency.image2;
        }

        $scope.modal = function(type, index) {
            switch (type){
                case 'chart':
                    if (index == 1){
                        $scope.modalData = $scope.chartDeath;
                    }else if (index == 2) { 
                        $scope.modalData = $scope.chartDaly;
                    }
                    $scope.modalData.image2 = $scope.modalData.image;
                    break;
                case 'slide':
                    $scope.modalData = $scope.slides[index];
                    $('#carouselHome').carousel('pause');
                    break;
            }
        }

        $('div#modalChart').click(function() {
            $('div#modalChart').modal('hide');
        }).children().click(function(e){
            if (!$(e.target).parent().is('button') && !$(e.target).parent().hasClass('close')){
                return false;
            }
        });
       $scope.status = 'ready';
    }

    controller.$inject = ['configService', 'dvtUtils', '$scope', '$stateParams', '$state','$document', '$log'];
    return controller;
});
