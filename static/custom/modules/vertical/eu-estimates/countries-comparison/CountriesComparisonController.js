/**
 * @ngdoc controller
 * @name ilo.eu-estimates.controller:CountriesComparisonController
 * @requires $scope
 * @requires $stateParams
 * @requires $state
 * @requires dataService
 * @requires mapProvider
 * @requires $log
 * @requires configService
 * @requires $document
 * @requires $compile
 * @description
 * ############################################
 */
define(function (require) {
    'use strict';
    
    function controller($scope, $window, $stateParams, $state, $log, CountriesComparisonService, dvtUtils, dataService, plotsProvider, $document, configService) {
        $scope.title ="Countries Comparison";

        // CDA
        $scope.cda =  configService.getIloCda();

        // Literals / i18n
        $scope.i18n = require('json!horizontal/model/literals');
        var href = window.location.href;

        // Some graphic is set
        if (href.indexOf('countries-comparison#') > -1) {
            var selected = href.substr(href.indexOf('countries-comparison#'));
            selected = selected.replace('countries-comparison#', '');

            href = href.replace(href.substr(href.indexOf('countries-comparison#')),'countries-comparison');

            var items = jQuery('#carouselCountries ul.carousel-inner li.item');

            for (var i = 0; i < items.length; i++) {
                if (jQuery(items[i]).attr("data-name") == selected) {
                    jQuery('#carouselCountries').carousel(i).carousel('pause');
                    break;
                }
            }
        }

        $scope.dashboard = {};
        $scope.dashboard = {
            parameters: {
                "pColorEU": dvtUtils.getColorCountry(),
                "pColorEU2": dvtUtils.getEUColor(2)
            }
        };

        $scope.graphWidth = jQuery('li.item.active').width();

        $scope.orientation = jQuery(window).width() > 425? "vertical" : "horizontal";

        angular.element($window).bind('resize', function() {
            $state.reload();

            $scope.number = 1;
        });

        $scope.stories = [
            //0
            {
                plots: CountriesComparisonService.getStoryMainPlots(),
            }
        ];

        jQuery('#carouselCountries').on('slid.bs.carousel', function () {
            // Update location based on slide
            var item = jQuery(this).find('.item.active').data('name');
            if (item) window.location.href = href + '#' + item;
        })

        $scope.status = 'ready';
    }
    
    controller.$inject = ['$scope', '$window', '$stateParams', '$state', '$log', 'countriesComparisonService', 'dvtUtils', 'dataService', 'plotsProvider', '$document', 'configService'];
    return controller;
    
});