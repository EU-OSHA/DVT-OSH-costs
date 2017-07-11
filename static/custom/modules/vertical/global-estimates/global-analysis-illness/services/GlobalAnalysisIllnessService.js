define (function (require) {

    var configService = require('horizontal/config/configService');
    var GlobalAnalysisIllnessService = function ($http, $log) {
        function promise(url) {
            return $http.get(url);
        }
        return {
            getDataSet_Country_Type_value: function(){
                var url = configService.getPilotDataPath() + "&dataAccessId=getLegendByCounty&parampIndicator=28";
                //$log.debug('getDataSet_Country_Type_value url:' + url);
                return promise(url);
            }
        };
    };

    GlobalAnalysisIllnessService.$inject = ['$http', '$log', 'dvtUtils'];

    return GlobalAnalysisIllnessService;

});