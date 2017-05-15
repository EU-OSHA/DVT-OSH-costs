define (function (require) {

    var configService = require('horizontal/config/configService');
    var CountriesComparisonService = function (dvtUtils) {
        return {
            getStoryMainPlots: function() {

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
                            return dvtUtils.getColorCountry(-1);
                        },
                        bar_strokeStyle: dvtUtils.getColorCountry(0),
                        visualRoles:{
                            series:'series',
                            category:'category'
                        }
                    }
                ];
            }
        };
    };

    CountriesComparisonService.$inject = ['dvtUtils'];

    return CountriesComparisonService;

});
