define (function (require) {

    var configService = require('horizontal/config/configService');
    var GlobalRegionsService = function (dvtUtils) {
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
            },
            getSplitMainPlots: function(pSplits, pColor, pLightColor) {

                var dashboard = this.dashboard;

                return [
                    {
                        name: "main",
                        dataPart: "0",
                        bar_fillStyle: function (scene) {
                            var countryKey = scene.firstAtoms.category;
                            var split = scene.firstAtoms.series;
                            if (split == pSplits.split1){
                                if (countryKey == 'EU28') {
                                    return dvtUtils.getColorCountry();
                                }
                                return pColor;    
                            }else if (split == pSplits.split2) {
                                if (countryKey == 'EU28') {
                                    return dvtUtils.getEUColor(2);
                                }
                                return pLightColor; 
                            }
                            
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

    GlobalRegionsService.$inject = ['dvtUtils'];

    return GlobalRegionsService;

});