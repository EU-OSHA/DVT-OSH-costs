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

    function controller($scope, $rootScope, $window, $stateParams, $state, $log, dvtUtils, dataService, plotsProvider, $document, configService) {
        $scope.title ="About Estimates";

        var clickTrack = $rootScope.hasAgreedCookies;
        // CDA
        $scope.cda =  configService.getIloCda();

        // Literals / i18n
        $scope.i18n = configService.getLiterals();

        $scope.status = 'ready';

        $document.ready(function() {
            angular.element('[data-toggle="popover"]').popover({
                html: true,
                template: '<div class="tooltip" role="tooltip"><div class="tooltip-arrow"></div><div class="clear"><a href:"javascript:" class="popover-close"><i class="fa fa-close pull-right" aria-hidden="true"></i></a></div><div class="popover-content tooltip-inner"></div></div>',
                content : function() {
                    return $(this).attr('data-original-title');
                },
                placement: 'top'
            });
        });

        angular.element(document).on('click', function(e) {
            configService.termClick(e, $rootScope.hasAgreedCookies);
        });
    }

    controller.$inject = ['$scope', '$rootScope', '$window', '$stateParams', '$state', '$log', 'dvtUtils', 'dataService', 'plotsProvider', '$document', 'configService'];
    return controller;

});
