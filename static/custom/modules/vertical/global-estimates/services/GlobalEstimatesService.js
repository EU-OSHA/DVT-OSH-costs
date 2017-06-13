define (function (require) {

    var configService = require('horizontal/config/configService');
    var GlobalEstimatesService = function (dvtUtils) {
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
                        visualRoles:{
                            series:'series',
                            category:'category'
                        }
                    }
                ];
            },
            getSplitMainPlots: function(splits) {

                var dashboard = this.dashboard;

                return [
                    {
                        name: "main",
                        dataPart: "0",
                        bar_fillStyle: function (scene) {
                            var countryKey = scene.firstAtoms.category;
                            var split = scene.firstAtoms.series;
                            if (split == splits.split1){
                                if (countryKey == 'EU28') {
                                    return dvtUtils.getColorCountry();
                                }
                                return dvtUtils.getColorCountry(-1);    
                            }else if (split == splits.split2) {
                                if (countryKey == 'EU28') {
                                    return dvtUtils.getEUColor(2);
                                }
                                return dvtUtils.getColorCountry(0); 
                            }
                            
                        },
                        visualRoles:{
                            series:'series',
                            category:'category'
                        }
                    }
                ];
            },
            getStoryLightPlots: function() {

                var dashboard = this.dashboard;

                return [
                    {
                        name: "main",
                        dataPart: "0",
                        bar_fillStyle: function (scene) {
                            var countryKey = scene.firstAtoms.category;
                            if (countryKey == 'EU28') {
                                return dvtUtils.getEUColor(2);
                            }
                            return dvtUtils.getColorCountry(0);
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