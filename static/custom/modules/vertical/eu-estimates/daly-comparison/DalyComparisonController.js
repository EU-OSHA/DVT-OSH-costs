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

    function controller($scope, $rootScope, $window, $stateParams, $state, $log, dvtUtils, dataService, DalyComparisonService, plotsProvider, $document, configService, $sce) {
        $scope.title ="DALY Comparison";
        // CDA
        $scope.cda =  configService.getIloCda();

        // Literals / i18n
        $scope.i18n = configService.getLiterals();

        $scope.to_trusted = function(html_code) {
            angular.element('[data-toggle="popover"]').popover({
                html: true,
                template: '<div class="tooltip" role="tooltip"><div class="tooltip-arrow"></div><div class="clear"><a href:"javascript:" class="popover-close"><i class="fa fa-close pull-right" aria-hidden="true"></i></a></div><div class="popover-content tooltip-inner"></div></div>',
                content : function() {
                    return $(this).attr('data-original-title');
                },
                placement: 'top'
            });

            angular.element("a[data-toggle=tooltip]").mouseover(function() {
                angular.element('ul.carousel-inner').css('overflow','visible');
            });
            angular.element('a[data-toggle=tooltip]').mouseout(function() {
                angular.element('ul.carousel-inner').css('overflow','hidden');
            });
            return $sce.trustAsHtml(html_code);
        }

        angular.element(document).on('click', function(e) {
            configService.termClick(e, $rootScope.hasAgreedCookies);
        });

        var href = $window.location.origin+$window.location.pathname+'#!'+$state.current.name;

        if ($window.location.href.indexOf('daly-comparison') > -1){
            href = $window.location.href;
        }

        // Some graphic is set
        if (href.indexOf('daly-comparison#') > -1) {
            var selected = href.substr(href.indexOf('daly-comparison#'));
            selected = selected.replace('daly-comparison#', '');

            href = href.replace(href.substr(href.indexOf('daly-comparison#')),'daly-comparison');

            var items = angular.element('#carouselCountries ul.carousel-inner li.item');

            for (var i = 0; i < items.length; i++) {
                if (angular.element(items[i]).attr("data-name") == selected) {
                    angular.element('#carouselCountries').carousel(i).carousel('pause');
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

        $scope.graphWidth = angular.element('li.item.active').width() - 30;
        $scope.graphHeight = $scope.graphWidth*2/5 < 330? 530: $scope.graphWidth*2/5;

        $scope.orientation = angular.element($window).width() > 425? "vertical" : "horizontal";
        $scope.query = angular.element($window).width() > 425? "getIndicatorDataBySplit" : "getIndicatorDataBySplitDesc";

        $scope.step = {
            chart1: angular.element($window).width() > 425 ? 1000 : 2500,
            chart2: angular.element($window).width() > 425 ? 200 : 800,
            chart3: angular.element($window).width() > 425 ? 200 : 400,
            chart4: angular.element($window).width() > 425 ? 100 : 200
        }

        var width = angular.element($window).width();
        angular.element($window).bind('resize', function() {
            if (angular.element($window).width() != width) {
                width = angular.element($window).width();
                $state.reload();
            }
        });

        angular.element('#carouselCountries').on('slid.bs.carousel', function () {
            angular.element('#carouselCountries li.item').removeClass('newClass');

            angular.element('.carousel-inner').removeClass('overflowHidden');

            // Update location based on slide
            var item = angular.element(this).find('.item.active').data('name');
            if (item) window.location.href = href + '#' + item;

            // Prevent carousel from sliding automatically
            angular.element('#carouselCountries').carousel('pause');

        });

        angular.element('.global-estimates-indicators li').click(function() {
            angular.element('.global-estimates-indicators li').toggleClass('item-block');
            angular.element('.carousel-inner').addClass('overflowHidden');
        });
        angular.element('.carousel-control').click(function() {
            angular.element('.carousel-inner').addClass('overflowHidden');
        });

        $scope.status = 'ready';
    }

    controller.$inject = ['$scope', '$rootScope', '$window', '$stateParams', '$state', '$log', 'dvtUtils', 'dataService', 'DalyComparisonService', 'plotsProvider', '$document', 'configService', '$sce'];
    return controller;

});
