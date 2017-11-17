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
    
    function controller($scope, $window, $stateParams, $state, $log, dvtUtils, dataService, plotsProvider, $document, configService) {
        $scope.title ="About Estimates";

        // CDA
        $scope.cda =  configService.getIloCda();

        // Literals / i18n
        $scope.i18n = configService.getLiterals();

        $scope.status = 'ready';

        $document.ready(function() {
            angular.element('[data-toggle="popover"]').popover({
                html: true,
                template: '<div class="popover" role="tooltip"><div class="clear"><a href:"javascript:" class="popover-close"><i class="fa fa-close pull-right" aria-hidden="true"></i></a></div><div class="popover-content"></div></div>',
                content : function() {
                    return $(this).attr('data-original-title');
                },
                placement: 'top'
            });
        });

        angular.element(document).on('click', function(e) {
            angular.element('[data-toggle=popover]').each(function () {
                if ((!angular.element(e.target).is('[data-toggle=popover]') 
                    && angular.element(e.target).parents('div.popover').length == 0)
                    || angular.element(e.target).is('a.popover-close i')) {
                    angular.element(this).popover('hide');
                } else if (angular.element(e.target).is('[data-toggle=popover]') && !angular.element(this).is(e.target)) {
                    angular.element(this).addClass('popover-hidden');
                    angular.element(this).popover('hide');
                } else if (angular.element(e.target).is('[data-toggle=popover]') && angular.element(this).is(e.target)) {
                    if (angular.element(this).hasClass('popover-hidden')) {
                        console.log("SEND EVENT PIWIK");
                        angular.element(this).removeClass('popover-hidden');
                    }
                }
            });
        });
    }
    
    controller.$inject = ['$scope', '$window', '$stateParams', '$state', '$log', 'dvtUtils', 'dataService', 'plotsProvider', '$document', 'configService'];
    return controller;
    
});