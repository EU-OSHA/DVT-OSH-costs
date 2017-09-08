define (function (require) {

    var configService = require('horizontal/config/configService');
    var DalyComparisonService = function (dvtUtils) {
        return {
            getStoryMainPlots: function(pColor) {

                var dashboard = this.dashboard;

                return [
                    {
                        name: "main",
                        dataPart: "0",
                        bar_fillStyle: function (scene) {
                            var countryKey = scene.firstAtoms.category;
                            if (countryKey == 'EU28') {
                                return dvtUtils.getColorCountry();
                            }
                            return pColor;
                        },
                        visualRoles:{
                            series:'series',
                            category:'category'
                        }
                    }
                ];
            }
        };
    };

    DalyComparisonService.$inject = ['dvtUtils'];

    return DalyComparisonService;

});