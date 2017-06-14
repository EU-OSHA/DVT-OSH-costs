define (function (require) {

    var configService = require('horizontal/config/configService');
    var GlobalEstimatesService = function (dvtUtils) {
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
                            console.log("DAVID DEV");
                            console.log(split);
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

    GlobalEstimatesService.$inject = ['dvtUtils'];

    return GlobalEstimatesService;

});