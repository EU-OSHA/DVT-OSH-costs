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
    
    function controller($scope, $window, $stateParams, $state, $log, CountriesComparisonService, dvtUtils, dataService, plotsProvider, $document, configService, $sce) {
        $scope.title ="Countries Comparison";

        // CDA
        $scope.cda =  configService.getIloCda();

        // Literals / i18n
        $scope.i18n = configService.getLiterals();

        $scope.to_trusted = function(html_code) {
            angular.element('[data-toggle="tooltip"]').tooltip();
            return $sce.trustAsHtml(html_code);
        }

        var href = $window.location.origin+$window.location.pathname+'#!'+$state.current.name;

        if ($window.location.href.indexOf('countries-comparison') > -1){
            href = $window.location.href;
        }        

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

        $scope.graphWidth = angular.element('li.item.active').width() - 30;
        $scope.graphHeight = $scope.graphWidth*2/5 < 530? 330: $scope.graphWidth*2/5;

        $scope.step = {
            chart1: angular.element($window).width() > 425 ? 500 : 1000,
            chart2: angular.element($window).width() > 425 ? 500 : 2500,
            chart3: angular.element($window).width() > 425 ? 500 : 2000,
            chart4: 1,
            chart5: 0.2,
            chart6: 1
        }

        $scope.orientation = angular.element(window).width() > 425? "vertical" : "horizontal";
        $scope.query = angular.element(window).width() > 425 ? "getIndicatorData" : "getIndicatorDataDesc";

        var width = angular.element($window).width();
        angular.element($window).bind('resize', function() {
            if (angular.element($window).width() != width) {
                width = angular.element($window).width();
                $state.reload();

                $scope.number = 1;
            }            
        });

        $scope.stories = [
            //0
            {
                color: dvtUtils.getColorCountry(-1),
                plots: CountriesComparisonService.getStoryMainPlots(dvtUtils.getColorCountry(-1)),
                color1: dvtUtils.getIllnessColors(2),
                plots1: CountriesComparisonService.getStoryMainPlots(dvtUtils.getIllnessColors(2)),
                color2: dvtUtils.getIllnessColors(4),
                plots2: CountriesComparisonService.getStoryMainPlots(dvtUtils.getIllnessColors(4)),
                color3: dvtUtils.getIllnessColors(3),
                plots3: CountriesComparisonService.getStoryMainPlots(dvtUtils.getIllnessColors(3)),
                color4: dvtUtils.getChartSecondaryColor(),
                plots4: CountriesComparisonService.getStoryMainPlots(dvtUtils.getChartSecondaryColor()),
                color5: dvtUtils.getChartYellowColor(),
                plots5: CountriesComparisonService.getStoryMainPlots(dvtUtils.getChartYellowColor())
            }
        ];

        angular.element('#carouselCountries').on('slid.bs.carousel', function () {
            // Update location based on slide
            var item = jQuery(this).find('.item.active').data('name');
            if (item) window.location.href = href + '#' + item;
            // Prevent carousel from sliding automatically
            angular.element('#carouselCountries').carousel('pause');
        })


        angular.element('.eu-estimates-indicators li').click(function() {
            angular.element('.eu-estimates-indicators li').toggleClass('item-block');
        })

        $scope.status = 'ready';
    }
    
    controller.$inject = ['$scope', '$window', '$stateParams', '$state', '$log', 'countriesComparisonService', 'dvtUtils', 'dataService', 'plotsProvider', '$document', 'configService', '$sce'];
    return controller;
    
});