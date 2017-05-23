define (function (require) {

    var configService = require('horizontal/config/configService');
    var PieChartLegendService = function ($http, $log) {
        function promise(url) {
            return $http.get(url);
        }
        return {
            getDataSet_Country_Type_value: function(){
                var url = configService.getPilotDataPath() + "&dataAccessId=getLegendByCounty";
                //$log.debug('getDataSet_Country_Type_value url:' + url);
                return promise(url);
            }
        };
    };

    PieChartLegendService.$inject = ['$http', '$log', 'dvtUtils'];

    return PieChartLegendService;

});