/**
 * @ngdoc controller
 * @name dvt.cookies.controller:CookiesController
 * @requires configService
 * @requires $scope
 * @requires $log
 * @description
 * Cookies Controller
 */
define(function (require) {
    'use strict';

    return {
        generateController: function (module, ctrlName) {

            return angular.module(module)
                .controller(ctrlName, function ($scope, $log, $window, $cookies) {

                    angular.element("#google_translate_element a.goog-te-menu-value" ).on('click', function() {

                        var items =  angular.element(angular.element("iframe")[0].contentWindow.document).find("a.goog-te-menu2-item ");

                        items.on('click', function(event) {
                         var language;
                            if(event.target.tagName.toLowerCase() === "div" ) {
                                language =angular.element(event.target).find("span.text")[0].innerHTML;
                                $log.debug("Selected language to translate by google : "+ language);
                            }else{
                                language=event.target.innerHTML;
                                $log.debug("Selected language to translate by google : "+language);
                            }
                            window._paq.push(['trackEvent', 'googleTranslateMenu', 'languageTranslate', language, 11]);

                        });
                    });

                    // Literals
                    $scope.i18n_cookies = require('json!dvt/cookies-disclaimer/i18n');

                    var cookieLife= new Date();
                    cookieLife.setDate(cookieLife.getDate() + 360);
                    var cookieName = "disclaimerCookie";
                    if($window.screen.width<1024 && !$cookies.get("disclaimer")){
                        $cookies.put(cookieName,true,{expires:cookieLife});
                        $scope.showwidthdisclaimer= true;
                    }else {
                        $scope.showwidthdisclaimer = false;
                        $cookies.put(cookieName,false,{expires:cookieLife});
                        if (angular.element('body').hasClass('hasCookies')) {
                            angular.element('body').removeClass('hasCookies');
                        }
                    }
                    $scope.widthAgree= function () {

                        $log.info("widthConsent");
                        $scope.showwidthdisclaimer=false;
                        $cookies.put(cookieName,false,{expires:cookieLife});
                    };
                    $scope.consentAgree = function() {
                        if (angular.element('body').hasClass('hasCookies')) {
                            angular.element('body').removeClass('hasCookies');                            
                        }
                    }

                    if ($cookies.get('disclaimerCookie') != "false" && !$scope.showwidthdisclaimer) {
                        angular.element('body').addClass('hasCookies');
                    } else if (!$cookies.get('angular-consent.global')) {
                        angular.element('body').addClass('hasCookies');
                    }

                });

        }
    };

});


