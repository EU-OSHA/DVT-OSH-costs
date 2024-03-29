/**
 * @ngdoc directive
 * @name dvt.directive:ZylkMainMenu
 * @scope
 * @restrict E
 *
 * @description
 * A description of the directive
 *
 */
    function zoomSmall(){
        angular.element('html').css('font-size','8px');
    }
    function zoomMedium(){
        angular.element('html').css('font-size','10px');
    }
    function zoomBig(){
        angular.element('html').css('font-size','12px');
    }

define(function (require) {
    'use strict';

    var sequence = 1;
    var configService = require('horizontal/config/configService');

    function nextId() {
        return sequence++;
    }



    function ZylkMenuDirective($location, $log) {
        //TODO get data from ajax in JSON files
        return {
            restrict: 'E',
            transclude: true,
            replace: true,
            scope: {},
            controller: ['$rootScope', '$scope', '$window', '$state', 'configService', '$http', '$log','dataService',
                function ($rootScope, $scope, $window, $state, configService, $http, $log, dataService) {

                    var prevScrollpos = $window.pageYOffset;
                    $window.onscroll = function() {
                        var currentScrollPos = $window.pageYOffset;
                        var diff =  Math.abs(currentScrollPos - prevScrollpos);
                        if ( diff > 150 ) {
                            angular.element('.popover-close').click();
                            prevScrollpos = currentScrollPos;
                        }
                    }

                    //hide print icon in mobile
                    if(configService.isMobile()) {
                        angular.element(".a2a_button_print").remove();
                    }

                    // Literals / i18n
                    var i18n_literals = configService.getLiterals();
                    $scope.i18n_literals = i18n_literals;

                    var path = configService.getHorizontalDirectiveDataPath("main-menu", "i18n_menu");
                    $http.get(path).success(function(i18n_menu) {
                        $scope.i18n_menu = i18n_menu;
                    }).error(function(data,error){
                        //TODO process error
                    });

                    var breadCrumbStructure = require('json!dvt/directives/breadcrumb-items');
                    $scope.breadCrumbStructure = breadCrumbStructure;
                    var titleStructure = require('json!dvt/directives/title-items');
                    $scope.titleStructure = titleStructure;

                    path = configService.getHorizontalDirectiveDataPath("main-menu", "menu");
                    $http.get(path, { data: "", headers: {"Content-Type": "application/json"}}).success(function (menuStructure) {
                        $scope.structure = menuStructure;
                    });

                    $scope.isCurrentStateMenu = function (path) {
                        var lPath = $location.path().split("/");
                        $log.debug("isCurrentStateMenu and menu variable  |  path: " + path + "  |  " + "lPath[1]: " + lPath[1]);
                        return (path === lPath[1]
                            || (lPath[1] == "" && path == "home")
                            || (lPath[1] == "site-map" && path == "home")
                            || (lPath[1] == "accessibility" && path == "home")
                            || (lPath[1] == "privacy-policy" && path == "home")
                            || (lPath[1] == "legal-notice" && path == "home") ) ? 'main-menu-selected' : '';

                        //return (path === lPath[1] || (lPath[1] == "" && path == "home")) ? 'main-menu-selected' : '';
                    };

                    $scope.goToMethodology = function () {
                        $state.go('methodology', {'#': $state.href($state.current.name, {}, {absolute: false}).split("/")[1]});
                    };

                    $scope.hideLinkMethodology = function () {
                        if ($state.href($state.current.name, {}, {absolute: false}) !== null) {
                            var pathStart = $state.href($state.current.name, {}, {absolute: false}).split("/")[1];
                            return (['about-tool', 'legal-notice', 'accessibility', 'privacy-policy', 'site-map', 'newNonSenseState'].indexOf(pathStart) !== -1) ? 'hidden' : '';
                        }
                        return "";
                    };

                    $scope.isCurrentSection = function (id) {
                        var lPath = $location.path().split("/");
                        $log.debug("isCurrentSection and menu variable  |  " + id.replace(/\s+/g, '-') + "  |  " + $scope.breadCrumbStructure['sections'][lPath[1]]);
                        $scope.pathURLDVT=$location.absUrl();
                        $scope.pathURLDVTGoogle = "https://plus.google.com/share?url=" + $scope.pathURLDVT;
                        return (id.replace(/\s+/g, '-') === $scope.breadCrumbStructure['sections'][lPath[1]] ) ? 'main-menu-selected' : '';
                    };
                    $scope.titleS=titleStructure;
                    $scope.pathURLDVT=$location.absUrl();
                    $scope.pathURLDVTGoogle = "https://plus.google.com/share?url=" + $scope.pathURLDVT.replace("#","?_escaped_fragment_=");

                    $rootScope.$on('$viewContentLoading', function(event, viewConfig) {
                            $log.debug('Loading $viewContentLoading');
                            var path = $location.path();
                            $log.debug(path);
                            $log.warn($state.current.name);
                            var cadena = "";


                            $scope.breadCrumb = $scope.breadCrumbStructure[$state.current.name];
                            $scope.titleHeader = $scope.i18n_menu.Header;

                            if ($state.current.name == 'home') {
                                $scope.isHome = true;                                
                                $scope.title = $scope.titleStructure[$state.current.name];
                            } else {
                                var pathURL = path.split("/");
                                $scope.isHome = false;
                                var setBreadCrumbs=function() {
                                    $scope.breadCrumb = $scope.breadCrumbStructure[$state.current.name];
                                    $scope.title = $scope.titleStructure[$state.current.name];
                                    $scope.isHome = false;
                                    $scope.anchorPath = $location.path().split("/")[1];
                                };

                                setBreadCrumbs();
                            }

                            if(collapse.hasClass( "indvt" ) == true) {
                                collapse.removeClass("indvt");
                                collapse.removeClass("in");
                            }

                            //lo pongo en el title
                            //angular.element("title").html($scope.titleHeader);

                        }, $scope);


                    $rootScope.$on('$stateNotFound', function(event, unfoundState, fromState, fromParams) {

                        $state.go('404', {});
                        console.warn("$stateChangeError: ");
                        console.warn("unfoundState.to: " + unfoundState.to);
                        console.warn("unfoundState.to: " + unfoundState.to);
                        console.warn("unfoundState.options: " + unfoundState.options );
                    });

                    $rootScope.$on('$stateChangeError', function(event, toState, toParams, fromState, fromParams, error) {

                        $state.go('404', {});
                        console.warn("$stateChangeError: ");
                        console.warn("unfoundState.to: " + unfoundState.to);
                        console.warn("unfoundState.to: " + unfoundState.to);
                        console.warn("unfoundState.options: " + unfoundState.options );
                    });


                    // la clase intdvt es nuestra y sustituye a la de bootstrap.
                    // la clase in de bootstrap siempre la quitamos, no nos interesa

                    var toggle = angular.element( "button.navbar-toggle" );
                    var collapse = angular.element("#osha-menu-collapse");

                    collapse.click(function() {
                        if (toggle.hasClass('closeIcon')) {
                            toggle.removeClass('closeIcon');
                            toggle.addClass('openIcon');
                        }
                    });

                    toggle.click(function() {
                        if(collapse.hasClass( "indvt" ) == true){
                            collapse.removeClass("indvt");
                            //$log.debug('cerrado');
                            collapse.removeClass("in");
                            toggle.addClass('openIcon');
                            toggle.removeClass('closeIcon');
                        }else{
                            collapse.addClass("indvt");
                            collapseSocial.removeClass("indvt");
                            //$log.debug('abierto');
                            collapse.removeClass("in");
                            toggle.addClass('closeIcon');
                            toggle.removeClass('openIcon');
                        }
                    });

                    // Trigger drop-up menu when you click on the burger buttton
                    angular.element( "#osha-menu-collapse .dropdown-menu a" ).click(function() {
                        collapse.removeClass("indvt");
                        collapse.removeClass("in");
                    });


                    // Social network responsive menu
                    var toggleSocial = angular.element( ".submenu-icon > a" );
                    var collapseSocial = angular.element("#osha-menu-social");

                    toggleSocial.click(function() {
                        if(collapseSocial.hasClass( "indvt" ) == true){
                            collapseSocial.removeClass("indvt");
                            //$log.debug('cerrado');
                            collapseSocial.removeClass("in");
                        }else{
                            collapseSocial.addClass("indvt");
                            collapse.removeClass("indvt");
                            //$log.debug('abierto');
                            collapseSocial.removeClass("in");
                        }
                    });

                    // Hide Social Menu if it is displayed
                    angular.element('div.submenu-icon').click(function(e) {
                        e.stopPropagation();
                    });

                    angular.element(document).click(function() {
                        if (angular.element('ul#osha-menu-social').hasClass('indvt')) {
                            angular.element('ul#osha-menu-social').removeClass('indvt');
                        }
                    });

                    angular.element(document).ready(function() {
                        if (!$scope.isHome && $state.current.name == '') {
                            $scope.anchorPath = $location.path().split("/")[1];
                            $scope.breadCrumb = $scope.breadCrumbStructure[$scope.anchorPath];
                            $scope.title = $scope.titleStructure[$scope.anchorPath];
                            $scope.isHome = false;
                        }
                    });

                }],
            templateUrl: configService.getHorizontalDirectiveTplPath("main-menu", "menu")
        }
    }

    ZylkMenuDirective.$inject = ['$location', '$log'];

    return ZylkMenuDirective;
});
