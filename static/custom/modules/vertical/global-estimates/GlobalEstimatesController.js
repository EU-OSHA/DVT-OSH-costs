/**
 * @ngdoc controller
 * @name ilo.eu-estimates.controller:GlobalEstimatesController
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
    
    function controller($scope, $window, $stateParams, $state, $log, GlobalEstimatesService, dvtUtils, dataService, plotsProvider, $document, configService) {
        $scope.title ="Global Estimates";

        // CDA
        $scope.cda =  configService.getIloCda();

        // Literals / i18n
        $scope.i18n = configService.getLiterals();
        $scope.i18n_global = require('json!vertical/global-estimates/i18n');

        // Countries Select
        dataService.getCountriesRegion().then(function(dataset) {
            var countries = {};
            dataset.data.resultset.forEach(function(country){
                countries["" + country[0]] = {
                    name: country[0],
                    region: country[1]
                }
            });
            $scope.countries = countries;
        });

        // Splits when the indicator has more than 1 split
        $scope.splits = [
            {
                split1: 'Fatal work-related illnesses',
                split2: 'Fatal work-related injuries'
            },
            {
                split1: 'YLL-Fatal injuries and illnesses per 100.000 workers',
                split2: 'YLD-non fatal injuries and illnesses per 100.000 workers'
            }
        ]

        $scope.step = {
            chart1: 20,
            chart2: jQuery(window).width() > 425 ? 500 : 1000,
            chart3: 20,
            chart4: 2500,
            chart5: 2.5
        }

        var href = $window.location.origin+$window.location.pathname+'#!'+$state.current.name;

        if ($window.location.href.indexOf('global-estimates') > -1){
            href = $window.location.href;
        }

        // Some graphic is set
        if (href.indexOf('global-estimates#') > -1) {
            var selected = href.substr(href.indexOf('global-estimates#'));
            selected = selected.replace('global-estimates#', '');

            href = href.replace(href.substr(href.indexOf('global-estimates#')),'global-estimates');

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

        $scope.stories = [
            //0 - Mortality
            {
                color1: dvtUtils.getColorCountry(-1),
                color2: dvtUtils.getColorCountry(0),
                plots: GlobalEstimatesService.getSplitMainPlots($scope.splits[0], dvtUtils.getColorCountry(-1), dvtUtils.getColorCountry(0))
            },
            // 1 - Years of Life Lost
            {
                color: dvtUtils.getColorCountry(-1),
                plots: GlobalEstimatesService.getStoryMainPlots(dvtUtils.getColorCountry(-1))
            },
            // 2 - YLL vs YLD
            {
                color1: dvtUtils.getColorCountry(-1),
                color2: dvtUtils.getIllnessColors(2),
                plots: GlobalEstimatesService.getSplitMainPlots($scope.splits[1], dvtUtils.getColorCountry(-1), dvtUtils.getIllnessColors(2))
            },
            // 3 - Total Cost
            {
                color1: dvtUtils.getIllnessColors(4),
                color2: dvtUtils.getIllnessColors(3),
                plots1: GlobalEstimatesService.getStoryMainPlots(dvtUtils.getIllnessColors(4)),
                plots2: GlobalEstimatesService.getStoryMainPlots(dvtUtils.getIllnessColors(3)),
            }
        ];

        $scope.graphWidth = jQuery('li.item.active').width() - 30;

        $scope.lastGraphWidth = jQuery(window).width() > 425? $scope.graphWidth/2 -15: $scope.graphWidth;

        angular.element($window).bind('resize', function() {
            $state.reload();            
        });

        jQuery('#carouselCountries').on('slid.bs.carousel', function () {
            $('#carouselCountries li.item').removeClass('newClass');
            
            // Update location based on slide
            var item = jQuery(this).find('.item.active').data('name');
            if (item) window.location.href = href + '#' + item;
            
            // Prevent carousel from sliding automatically
            jQuery('#carouselCountries').carousel('pause');


        })
        $('.global-estimates-indicators li').click(function() {
            $('.global-estimates-indicators li').toggleClass('item-block');

        })

        $scope.status = 'ready';
    }
    
    controller.$inject = ['$scope', '$window', '$stateParams', '$state', '$log', 'globalEstimatesService', 'dvtUtils', 'dataService', 'plotsProvider', '$document', 'configService'];
    return controller;
    
});