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
    
    function controller($scope, $window, $stateParams, $state, $log, GlobalRegionsService, dvtUtils, dataService, plotsProvider, $document, configService, $sce) {
        $scope.title ="Global Regions";

        // CDA
        $scope.cda =  configService.getIloCda();

        // Literals / i18n
        $scope.i18n = configService.getLiterals();
        $scope.i18n_global = require('json!vertical/global-regions/i18n');

        $scope.to_trusted = function(html_code) {
            angular.element('[data-toggle="tooltip"]').tooltip();
            return $sce.trustAsHtml(html_code);
        }

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

        // Behaviour when Countries Select value changes
        var color = dvtUtils.getChartYellowColor();
        var lightColor = dvtUtils.getChartLightYellowColor();
        var lightBar;

        $scope.selectChange = function() {
            var labels = $('svg > g g:nth-child(2) > g g:nth-child(4) text');
            $('rect.label-country').attr('style','');

            $('text.label-country').attr('class','');
            $('rect.label-country').attr('class','');
            for (var i = 0; i < labels.length; i++) {
                if ($(labels[i]).text() == $scope.country.region) {
                    $(labels[i]).attr('class', 'label-country');

                    if (i < 8) {
                        console.log($('svg > g g:nth-child(2) > g g:nth-child(3) > g > g > g > g > rect:nth-child('+(i+1)+')').size());
                        $('svg > g g:nth-child(2) > g g:nth-child(3) > g > g > g > g > rect:nth-child('+(i+1)+')').css('fill',color);
                        lightBar = $('svg > g g:nth-child(2) > g g:nth-child(3) > g > g > g > g > rect:nth-child('+(i+1)+')')[0];
                        $(lightBar).css('fill', lightColor);
                        lightBar = $('svg > g g:nth-child(2) > g g:nth-child(3) > g > g > g > g > rect:nth-child('+(i+1)+')')[4];
                        $(lightBar).css('fill', lightColor);
                        $('svg > g g:nth-child(2) > g g:nth-child(3) > g > g > g > g > rect:nth-child('+(i+1)+')').attr('class','label-country');
                    }
                }
            }
        }


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
            chart2: $(window).width() > 425 ? 500 : 1000,
            chart3: 20,
            chart4: 1000,
            chart5: 1
        }

        var href = $window.location.origin+$window.location.pathname+'#!'+$state.current.name;

        if ($window.location.href.indexOf('global-regions') > -1){
            href = $window.location.href;
        }

        // Some graphic is set
        if (href.indexOf('global-regions#') > -1) {
            var selected = href.substr(href.indexOf('global-regions#'));
            selected = selected.replace('global-regions#', '');

            href = href.replace(href.substr(href.indexOf('global-regions#')),'global-regions');

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
                "pColorEU": dvtUtils.getColorCountry(),
                "pColorEU2": dvtUtils.getEUColor(2)
            }
        };

        $scope.stories = [
            //0 - Mortality
            {
                color1: dvtUtils.getColorCountry(-1),
                color2: dvtUtils.getChartSecondaryColor(),
                plots: GlobalRegionsService.getSplitMainPlots($scope.splits[0], dvtUtils.getColorCountry(-1), dvtUtils.getChartSecondaryColor()),
            },
            // 1 - Years of Life Lost
            {
                color: dvtUtils.getColorCountry(-1),
                plots: GlobalRegionsService.getStoryMainPlots(dvtUtils.getColorCountry(-1))
            },
            // 2 - YLL vs YLD
            {
                color1: dvtUtils.getColorCountry(-1),
                color2: dvtUtils.getIllnessColors(2),
                plots: GlobalRegionsService.getSplitMainPlots($scope.splits[1], dvtUtils.getColorCountry(-1), dvtUtils.getIllnessColors(2))
            },
            // 3 - Total Cost
            {
                color1: dvtUtils.getIllnessColors(4),
                color2: dvtUtils.getIllnessColors(3),
                plots1: GlobalRegionsService.getStoryMainPlots(dvtUtils.getIllnessColors(4)),
                plots2: GlobalRegionsService.getStoryMainPlots(dvtUtils.getIllnessColors(3))
            }
        ];

        $scope.graphWidth = $('li.item.active').width() - 30;
        
        $scope.lastGraphWidth = $(window).width() > 425? $scope.graphWidth/2 -15: $scope.graphWidth;


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

        $('div#modalChart').click(function() {
            $('div#modalChart').modal('hide');
        }).children().click(function(e){
            if (!$(e.target).is('a')) {
                if (!$(e.target).is('button') && !$(e.target).is('font')) {
                    if (!$(e.target).parent().is('button') && !$(e.target).parent().hasClass('close')){
                        return false;
                    }
                }else {
                    if (!$(e.target).is('button') && !$(e.target).is('font') && !$(e.target).hasClass('close')) {
                        return false;
                    }
                }     
            }            
        });

        $scope.status = 'ready';
    }
    
    controller.$inject = ['$scope', '$window', '$stateParams', '$state', '$log', 'globalRegionsService', 'dvtUtils', 'dataService', 'plotsProvider', '$document', 'configService', '$sce'];
    return controller;
    
});