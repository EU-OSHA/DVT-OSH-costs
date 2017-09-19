/**
 * @ngdoc controller
 * @name ilo.eu-estimates.controller:GlobalRegionsController
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
    
    function controller($scope, $window, $stateParams, $state, $log, dvtUtils, dataService, DalyComparisonService, plotsProvider, $document, configService, $sce) {
        $scope.title ="DALY Comparison";

        // CDA
        $scope.cda =  configService.getIloCda();

        // Literals / i18n
        $scope.i18n = configService.getLiterals();

        var href = $window.location.origin+$window.location.pathname+'#!'+$state.current.name;

        if ($window.location.href.indexOf('daly-comparison') > -1){
            href = $window.location.href;
        }

        // Some graphic is set
        if (href.indexOf('daly-comparison#') > -1) {
            var selected = href.substr(href.indexOf('daly-comparison#'));
            selected = selected.replace('daly-comparison#', '');

            href = href.replace(href.substr(href.indexOf('daly-comparison#')),'daly-comparison');

            var items = $('#carouselCountries ul.carousel-inner li.item');

            for (var i = 0; i < items.length; i++) {
                if ($(items[i]).attr("data-name") == selected) {
                    $('#carouselCountries').carousel(i).carousel('pause');
                    break;
                }
            }
        }

        $scope.dashboard = {};
        $scope.dashboard = {
            parameters: {
                "pColorEU": dvtUtils.getColorCountry()
            }
        };

        $scope.stories = [
            //0 - All Work-Related Illnesses
            {
                color: dvtUtils.getIllnessColors(4),
                plots: DalyComparisonService.getStoryMainPlots(dvtUtils.getIllnessColors(4))
            },
            // 1 - Cancer
            {
                color: dvtUtils.getColorCountry(-1),
                plots: DalyComparisonService.getStoryMainPlots(dvtUtils.getColorCountry(-1))
            },
            // 2 - MSD
            {
                color: dvtUtils.getIllnessColors(2),
                plots: DalyComparisonService.getStoryMainPlots(dvtUtils.getIllnessColors(2))
            },
            // 3 - Circulatory
            {
                color: dvtUtils.getIllnessColors(3),
                plots: DalyComparisonService.getStoryMainPlots(dvtUtils.getIllnessColors(3))
            }
        ];

        $scope.graphWidth = $('li.item.active').width() - 30;
        $scope.graphHeight = $scope.graphWidth*2/5 < 330? 330: $scope.graphWidth*2/5;

        $scope.orientation = $(window).width() > 425? "vertical" : "horizontal";

        $scope.step = {
            chart1: $(window).width() > 425 ? 1000 : 2500,
            chart2: $(window).width() > 425 ? 200 : 800,
            chart3: $(window).width() > 425 ? 200 : 400,
            chart4: $(window).width() > 425 ? 100 : 200
        }

        var width = angular.element($window).width();
        angular.element($window).bind('resize', function() {
            if (angular.element($window).width() != width) {
                width = angular.element($window).width();
                $state.reload();
            }
        });

        $('#carouselCountries').on('slid.bs.carousel', function () {
            $('#carouselCountries li.item').removeClass('newClass');
            
            // Update location based on slide
            var item = $(this).find('.item.active').data('name');
            if (item) window.location.href = href + '#' + item;
            
            // Prevent carousel from sliding automatically
            $('#carouselCountries').carousel('pause');

        });

        $('.global-estimates-indicators li').click(function() {
            $('.global-estimates-indicators li').toggleClass('item-block');

        });

        $scope.status = 'ready';
    }
    
    controller.$inject = ['$scope', '$window', '$stateParams', '$state', '$log', 'dvtUtils', 'dataService', 'DalyComparisonService', 'plotsProvider', '$document', 'configService', '$sce'];
    return controller;
    
});