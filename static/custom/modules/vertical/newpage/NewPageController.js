/**
 * Created by iker on 23/02/17.
 */
/**
 * @ngdoc controller
 * @name osha-dvt-ilo.home.controller:homeController
 * @requires $scope
 * @requires $stateParams
 * @requires $state
 * @requires $document
 * @description
 * ############################################
 */
define(function (require) {
    'use strict';

    function controller(configService, dvtUtils, $scope, $stateParams, $state, $document, $log,dataservice) {

        // $scope.dashboard = {
        //     parameters: {
        //         pYears: "2015"
        //     }
        // };

        var npj1 = require('json!vertical/newpage/npj1');
        $scope.npj1 = npj1;

        // $scope.goto = function (estado) {
        //     $state.go(estado, {});
        // };
        var cont=1;
        $scope.title ="Los ocho mandamientos pastafaris";
        $scope.fsm = "";
        $scope.groupTeam="";
        $scope.titles="";
        $scope.misvalores="";
        $scope.changer = "1";
        $scope.buttonText = "Ramen";
        $scope.buttonStyle="button-red";
        $scope.popup = function (change) {
            $log.info("function called");
            $scope.fsm += getLine(cont);
            cont++;
            if (change == "1"){
                $scope.buttonText = "Raaaamennnnnn!";
                $scope.buttonStyle="button-blue";
                $scope.changer = "0";
            }else {
                $scope.buttonText = "Ramen";
                $scope.buttonStyle="button-red";
                $scope.changer = "1";
            }

                $log.info($scope.groupTeam);
            /*
             Acceso CDA database
             */

              // dataservice.getBigCountries().then(function (dataset) {
              //               $log.info(dataset);
              //               $scope.titles=dataset.data.metadata;
              //               $log.info($scope.titles);
              //               $scope.misvalores= dataservice.dataMapper(dataset);
              //               $log.info($scope.misvalores);
              //            });
            dataservice.getBigCountriesTeam($scope.groupTeam).then(function (dataset) {
                             $log.info(dataset);
                            $scope.titles=dataset.data.metadata;
                             $log.info($scope.titles);
                             $scope.misvalores= dataservice.dataMapper(dataset);
                             $log.info($scope.misvalores);
                          });

        };

         function getLine (num) {
            switch (num) {
                case 1:
                    return npj1.md1;
                    break;
                case 2:
                    return npj1.md2;
                    break;
                case 3:
                    return npj1.md3;
                    break;
                case 4:
                    return npj1.md4;
                    break;
                case 5:
                    return npj1.md5;
                    break;
                case 6:
                    return npj1.md6;
                    break;
                case 7:
                    return npj1.md7;
                    break;
                case 8:
                    return npj1.md8;
                    break;
                default:
                    return "";
            }
        }

        $scope.status = 'ready';
    }


    controller.$inject = ['configService', 'dvtUtils', '$scope', '$stateParams', '$state','$document', '$log', 'dataService'];
    return controller;
});