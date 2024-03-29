/**
 * @ngdoc directive
 * @name dvt.charting.directive:ZylkBarChart
 * @scope
 * @restrict E
 *
 * @description
 *
 * This directive encapsulates the main common graphs types for data visualization based on __CCC__ of __Ctools__ like bar
 * charts and some others commons plots _(lines, pie...etc)_
 *
 * @param {String} title Set chart title.
 * @param {String} [type="bar"] Set CCC object as graph base, current version include:
 - dot
 - lines
 - pie
 - bar
 * @param {Numeric} [width=225] Chart width.
 * @param {Numeric} [height=250] Chart height.
 * @param {String} [orientation=vertical] Chart orientation.
 * @param {String} [query=null] Id identify sql sentence in CDA.
 * @param {String} [cda="osha-dvt-ilo/dashboards/ilo.cda"]   CDA file path.
 * @param {Array[Array]}  params Dashboard parameters that will be sent to CDA as key value arrays in array
 * @param {Array} listen-to  Component is rendered again when those parameters change
 * (bar and lines) or donuts charts.
 * @param {String} base-axis-label-text The text is showed in base axis label.
 * @param {boolean} base-axis-label-visible Hide base axis label.
 * @param {Function} post-fetch Chart component postFetch custom function.
 * @param {Function} post-execution Chart component postExecution custom function.
 * @param {Function} click-action Chart component clickAction custom function.
 * @param {Function} label-top label top conditional margins
 *
 <pre>function (dataset) {
    var height = this.chart.height - dataset.datum.atoms.value.value;
    if (dataset.atoms.series.value == 'HLY') {
        return height * 1.06;
    }
    else {
        return height * 0.55;
    }
}</pre>
 * @param {Boolean} [label-visible="false"] Show labels
 * @param {String} [label-text-align="left"]
 * The horizontal text alignment. One of:
 * - center
 * - left
 * - right
 * @param {Boolean} [values-visible=false] Indicates if value labels are shown next to the visual elements.
 * @param {Array} colors The colors of a main color axis.
 * @param {Array} color2-axis-colors The colors of a second color axis.
 * @param {Array} [color-role="category"] The color visual role is a plot-level visual role that is
 * visually encoded by the color of visual elements. It corresponds with one ore more readers:
 * <pre>
 *     color-role="series,category"
 * </pre>
 * @param {Object} calculations Can be specified to calculate the values of certain dimensions.
 * <pre>
 *     function (datum, out) {
 *          var series = datum.atoms.series.value;
 *           out.dataPart = (series == "57" ? "1" : "0");
 *     }
 </pre>
 * @param {Array} plots An array of cartesian plots.

 This object provide to directive the capacity of render complex graphs like composed charts.

 <pre>
 plots: [
 {
     name: 'main',
     visualRoles: {
         value:    'count',
         series:   'city',
         category: 'period'
     }
 },
 {
     type: 'point',
     linesVisible: true,
     dotsVisible:  true,
     orthoAxis: 2,
     colorAxis: 2,
     nullInterpolationMode: 'linear',
     visualRoles: {
         value: 'avgLatency',
         color: {legend: {visible: false}}
     }
 }]
 </pre>

 * @param {Array} readers A list of dimension names to load from corresponding logical table columns.
 Can be a string containing a comma separated list of dimension names.
 <pre>
 //  map logical table columns -> dimensions
 readers: 'city, period, count, avgLatency',
 </pre>
 * @param {Object} dimensions A map whose keys are the dimension type names and whose values are the dimension type options.
 *
 * You don't need to define dimensions unless you want to change their name or properties.
 * Charts automatically define default dimensions to satisfy their visual roles' requirements.
 *
 * Dimension options can be partial, so that it is possible to override only certain options.
 *
 *
 <pre>
 dimensions: {
        count:      {format: "#,0"  },
        avgLatency: {format: "#,0.0"}
    }
 </pre>
 * @param {Object} visual-roles The plot's visual roles map.
 * <pre>
 *      visualRoles: {
                value:    'count',
                series:   'city',
                category: 'period'
            }
 * </pre>
 * @param {Function} bar-fill-style The fill color of the bar.

 * @param {Array} contextuals
 * items of contextual menu
 *  - append defaults
 *  - add to items (text, action)
 * @param {Boolean} [show-contextuals=false] Shows contextual menu
 * @param {Boolean} is-maximized If the chart is maximized or not
 * @param {String} max-label-top It's the same function as labelTop but for the maximize feature
 * @param {Function} enlarge-action function to enlarge action
 * @param {Binary} [p-x-labels="1"] Show x Axis labels
 * @param {Binary} [p-y-labels="1"] Show y Axis labels
 * @param {Binary} [legend="0"] Show technical legend
 * @param {Binary} [angle="0"] Rotate x axis labels in order to show much better longest labels
 * @param {Binary} axis-percent Set percent format to label value
 * @param {Binary} axis-percent2 Set percent format to label value for ortho2Axis
 * @param {Binary} [ortho-axis-visible=true] Shows ortho axis.
 * @param {Binary} [ortho2-axis-visible=true] Shows ortho 2 axis.
 * @param {Function} legend-dot-fill-style Legend dot fill style.
 * +++++++++---------------
 * @param {String} multi-chart The multiChart visual role is a chart-level visual role that allows turning a chart into
 * a small multiples chart, http://en.wikipedia.org/wiki/Small_multiple.
 * @param {String} ortho-axis-title Ortho axis title.
 * @param {String} ortho-axis2-title Ortho axis 2 title.
 * @param {Numeric} axis-fixed-min Fixed axis min.
 * @param {Numeric} axis-fixed-max Fixed axis max.
 * @param {Numeric} step Step for the values range
 * @param {Boolean} [stacked=false] Stacked bars in bar chart.
 * @param {String} [legend-pos='bottom'] Possition of the legend inside the frame.
 * @param {Boolean} [animate=true] Animate component render
 * @param {Boolean} [selectable=false] Chart is selectable or not.Indicates if the chart's visual elements
 * can be selected by the user, by clicking.
 * @param {Boolean} [hoverable=true] Indicate if the chart's visual elements can be hoverable by the user.
 * @param {Boolean} [base-axis-visible=true] Indicate if the base axis is visible by the user.
 * @param {String} [values-mask='{series}'] Mask show as value.
 * @param {Function} base-axis-label_text Indicate the base axis label text.
 * @param {Function} base-axis-label_visible Indicate if the base axis label is visible by the user.
 * @param {Function} label_text Indicate main label text.
 * @param {Function} label_visible Indicate if the main label is visible by the user.
 * @param {String} [base-axis-label_text-align='right'] Indicate base axis label text align.
 * @param {String} [margisn] //TODO.
 */

define(function (require) {
    'use strict';

    var DotChartComponent = require('cdf/components/CccDotChartComponent');
    var LineChartComponent = require('cdf/components/CccLineChartComponent');
    var BarChartComponent = require('cdf/components/CccBarChartComponent');
    var PieChartComponent = require('cdf/components/CccPieChartComponent');
    var configService = require('horizontal/config/configService');
    var i18n = configService.getLiterals();

    var sequence = 1;

    function nextId() {
        return sequence++;
    }

    function ZylkBarChartDirective(dataService, plotsProvider, exportService, $log, maximize, $cookies) {

        var _template= ''
            + '<div class="col-md-12 dvt-chart zylk-bar-chart">'
            + '<div class="row">'
            + '<div class="header col-md-12 nopadding">'
            + '<div class="col-xs-11 col-sm-11 col-md-11 nopadding text-left wrapper-title-graphic">'
            + '<h2 ng-if="(!!title && !isMaximized && !titleH3) || (isMaximized && !longTitle)" class="title" data-ng-bind-html="title"></h2>'
            + '<h2 ng-if="!!isMaximized && !!longTitle" class="title" data-ng-bind-html="longTitle"></h2>'
            + '<h3 data-ng-if="(!!title && !isMaximized && titleH3)" class="title" data-ng-bind-html="title"></h3>'
            + '</div>'
            + '<div class="nopadding pull-right wrapper-contextual-menu">'
            + '<div data-ng-if="haveEnlarge" class="pull-right contextual-menu enlarge-button cursor-pointer">'
            + '<button data-ng-click="open(items[0].action)" title="Compare with other groups">Compare groups</button>'
            + '</div>'
            + '<div data-ng-if="!isMaximized && !haveEnlarge" class="pull-right contextual-menu cursor-pointer maximizeImage">'
       // if(!configService.isMobile()) {
            _template += '<div class="dropdown" ng-if="!isEnlarge==true">'
                + '<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">'
                + '<i class="three-points-vertical" title="Export"></i>'
                + '</button>'
                + '<ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu1">'
                + '<li data-ng-repeat="item in items"><a data-ng-click="open(item.action)" role="button" data-ng-bind="item.text"></a></li>'
                + '</ul>'
                + '</div>';
      //  }
        _template+= '</div>'
            + '<div data-ng-if="!isMaximized && haveEnlarge" class="pull-right contextual-menu cursor-pointer maximizeImage">';
      //  if(!configService.isMobile()) {
            _template+='<img alt="Maximize graphic" data-ng-click="open(items[1].action)" title="Maximize graphic" src="/pentaho/plugin/pentaho-cdf-dd/api/resources/system/osha-dvt-ilo/static/custom/img/more.png"/>'
     //   }
        _template+='</div>'
            + '<div data-ng-if="isMaximized && isEnlarged==undefined && isZoom" class="pull-right contextual-menu">';
        if(!navigator.userAgent.match('iPad')) {
            _template += '<div class="dropdown" ng-if="!isEnlarge==true">'
                + '<a data-ng-click="open(\'exportImageLink\')" role="button"><i class="fa fa-picture-o" aria-hidden="true"></i> Export as Image</a>'
                + '</div>';
        }
        _template +='</div>'
            + '</div>'
            + '</div>'
            + '<div class="backGraps">'
            + '<div data-ng-attr-id="{{ id }}"></div>'
            + '</div>'
            + '<div class="legend-info" ng-if="isMaximized && legendClickMode" data-ng-bind="i18n.L134"></div>'
            + '<div class="logoGraphics-wrapper"><img alt="European Agency for Safety and Health at Work" src="/pentaho/plugin/pentaho-cdf-dd/api/resources/system/osha-dvt-ilo/static/custom/img/EU-OSHA-trans-en.png" class="logoGraphics"></div>'
            + '<div ng-if="!!functionalLegend" class="functionalLegend" data-ng-bind-html="to_trusted(functionalLegend)"></div>'
            + '</div>';



        return {
            restrict: 'E',
            require: ['^zylkDashboard'],
            replace: true,
            scope: {
                listenTo: '=',
                params: '=',
                postFetch: '=',
                postExecution: '=',
                clickAction: '=',
                labelTop: '=',
                baseAxisLabelText: '=',
                baseAxisLabelLongText: '=',
                baseAxisLabelVisible: '=',
                labelVisible: '=',
                labelTextAlign: '=',
                valuesVisible: '=',
                colors: '=',
                calculations: '=',
                plots: '=',
                readers: '=',
                dimensions: '=',
                visualRoles: '=',
                barFillStyle: '=',
                color2AxisColors: '=',
                contextuals: '=?',
                maxLabelTop:'=',
                enlargeAction: '='
            },
            // TODO extract template
            template:_template,

            link: function (scope, element, attributes, controllers) {

                // FIX. enlarged views share same id, a prefix has been added that must be undone
                if (attributes.id.split("_").length > 1){
                    attributes.id = attributes.id.split("_")[1];
                }


                scope.id = 'zylk_bar_chart_' + nextId();
                var dashboard = controllers[0];
                scope.divClass = attributes.cssClass || 'col-xs-12 col-sm-6 col-md-3 col-lg-2';

                //In order to control metadata composition in max
                if (!!scope.enlargeAction) {
                    scope.haveEnlarge = "true";
                }
                scope.i18n = i18n;
                scope.isMaximized = !!attributes.isMaximized;
                scope.isZoom = !!attributes.isZoom;
                scope.titleH3 = !!attributes.titleH3;
                //scope.title = attributes.title;
                scope.longTitle = attributes.longTitle;
                scope.isEnlarge=attributes.isEnlarged;
                if(attributes.legendClickMode=="toggleVisible"){
                    scope.legendClickMode=true;
                }

                var definition = {
                    type: "cccBarChart",
                    name: scope.id,
                    executeAtStart: true,
                    priority: attributes.priority || 5,
                    htmlObject: scope.id,
                    listeners: [],
                    parameters: [],
                    chartDefinition: {
                        dataAccessId: attributes.query || null,
                        path: attributes.cda || "osha-dvt-ilo/dashboards/datapilot.cda",
                        //title: attributes.title || "",
                        width: attributes.width || 300,
                        height: attributes.height || 250,
                        orientation: attributes.orientation || "vertical",
                        crosstabMode: false,
                        stacked: attributes.stacked == 1 || false,
                        axisLabel_font: attributes.axisLabelFont || 'normal 12px "Open Sans"',
                        axisTitleLabel_textStyle: 'gray',
                        clickable: true,
                        clickAction: function (dataset) {
                        },
                        colorRole: "category",
                        colors: [],
                        colorMap: {},
                        color2AxisTransform: function (c) {
                            return c.brighter(0.0);
                        },
                        // Chart/Interaction
                        animate: attributes.animate || false,
                        selectable: attributes.selectable || false,
                        hoverable: attributes.hoverable || true,
                        // tooltip
                        tooltipClassName: 'light',
                        tooltipOpacity: 0.80,
                        /*Axis & Frames visivility*/
                        orthoAxisVisible: true,
                        ortho2AxisVisible: true,
                        baseAxisVisible: true,
                        plotFrameVisible: false,
                        overflowMarkersVisible: false,
                        //hide underflow indicator
                        underflowMarkersVisible: false,
                        //plot background styles
                        plotBg_fillStyle: plotsProvider.getPlotBgColor(),
                        //plot grid styles
                        baseAxisGrid: attributes.baseAxisGrid || false,
                        orthoAxisGrid: attributes.orthoAxisGrid || true, // Color axes
                        axisGrid_strokeStyle: 'white',
                        axisGrid_lineWidth: 2,
                        axisBandSizeRatio: 0.6,
                        //show values
                        valuesVisible: false,
                        valuesMask: attributes.valuesMask || '{series}',
                        valuesFont: attributes.valuesFont || 'emphasis 10px "Open Sans"',
                        valuesOptimizeLegibility: true,
                        valuesNormalized: false,
                        valuesFormat: scope.valuesFormat,
                        label_top: scope.labelTop,
                        legend: attributes.legend === 'true' || false,
                        legendClickMode: attributes.legendClickMode || 'toggleVisible',
                        legendFont: attributes.legendFont || 'normal 14px "Open Sans"',
                        legendPosition: attributes.legendPos || 'bottom',
                        legendLabel_visible: true,
                        legendDot_strokeStyle: attributes.legendDotStrokeStyle,
                        legendDot_shape: 'square',
                        baseAxisLabel_text: !scope.isMaximized?scope.baseAxisLabelText:scope.baseAxisLabelLongText,
                        baseAxisLabel_visible: scope.baseAxisLabelVisible,
                        baseAxisLabel_textBaseline: attributes.baseAxisLabelTextBaseline || 'top',
                        baseAxisLabel_font: attributes.baseAxisLabelFont || 'normal 12px "Open Sans"',
                        axisTitleLabel_font: attributes.axisTitleLabelFont || 'normal 12px "Open Sans"',
                        baseAxisOverlappedLabelsMode: 'leave',
                        multiChartRole: attributes.multiChart,
                        label_visible: scope.labelVisible,
                        label_textAlign: scope.labelTextAlign || 'center',
                        /*Adjust tooltip position*/
                        tooltipGravity: 'sw',
                        //tooltipFollowMouse: true,
                        //tooltipOffset: 76
                        //new tooltip
                        tooltipFormat: scope.tooltipFormat,
                        baseAxisTooltipEnabled : false
                    }
                };

                //TODO refactor OR condition in to definition where it been possible

                //isolate scope
                if (!!scope.baseAxisLabelText) {
                    definition.chartDefinition.baseAxisLabel_text = scope.baseAxisLabelText;
                }
                if (!!scope.baseAxisLabelVisible) {
                    definition.chartDefinition.baseAxisLabel_visible = scope.baseAxisLabelVisible;
                }
                if (!!scope.readers) {
                    definition.chartDefinition.readers = scope.readers;
                }
                if (!!scope.dimensions) {
                    definition.chartDefinition.dimensions = scope.dimensions;
                }
                if (!!scope.calculations) {
                    definition.chartDefinition.calculations = scope.calculations;
                }

                if (!!scope.plots) {
                    definition.chartDefinition.plots = scope.plots;
                }

                if (!!scope.params)
                    definition.parameters = scope.params;

                if (!!scope.listenTo)
                    for (var listen in scope.listenTo) {
                        definition.listeners[listen] = scope.listenTo[listen];
                    }

                if (!!scope.clickAction) {
                    definition.chartDefinition.clickAction = scope.clickAction;
                }

                if (!!scope.colors) {
                    definition.chartDefinition.colors = scope.colors;
                }

                if (!!scope.color2AxisColors) {
                    definition.chartDefinition.color2AxisColors = scope.color2AxisColors;
                }

                if (definition.chartDefinition.orientation == 'vertical'){
                    definition.chartDefinition.baseAxisLabel_textAlign = attributes.baseAxisLabelTextAlign || 'center';
                }else if (definition.chartDefinition.orientation == 'horizontal'){
                    definition.chartDefinition.baseAxisLabel_textAlign =  attributes.baseAxisLabelTextAlign || 'right';
                }
                if (!!attributes.angle) {
                    definition.chartDefinition.baseAxisLabel_textAngle = (attributes.angle==1)?-Math.PI / 3:-Math.PI / 6.5;
                    if (definition.chartDefinition.orientation == 'horizontal') {
                        definition.chartDefinition.baseAxisLabel_textAngle = 0;
                    }
                    definition.chartDefinition.baseAxisLabel_textAlign = 'right';
                    definition.chartDefinition.baseAxisLabel_textBaseline = 'top';
                    if(attributes.angle>1)
                    {
                        definition.chartDefinition.margins = !scope.isMaximized ?'1 1 -30 1':'1 1 -5 1';
                        definition.chartDefinition.paddings = !scope.isMaximized ?'1 1 0 -25': '1 1 0 -27';
                    }
                }

                if(!!attributes.margins){
                    definition.chartDefinition.margins = attributes.margins;
                }else{
                    definition.chartDefinition.margins = '0';
                }
                if(!!attributes.paddings){
                    definition.chartDefinition.paddings = attributes.paddings;
                }else{
                    definition.chartDefinition.paddings = '7 5 0 10';
                }

                if (!!scope.postFetch)
                    definition.postFetch = scope.postFetch;


                var postExec_ = scope.postExecution;
                definition.postExecution = function(){
                    if (!!postExec_){
                        postExec_();
                    }

                    /*
                     * fluidity
                     * duplicated code in:
                     *  - ZylkDashboarDirective
                     *  - ZylkBarchartDirective
                     *  - ZylkPyramidDirective
                     *  - ZylkRadarDirective
                     */

                    var fullwitdh = this.placeholder().width();
                    this.chart.options.width = fullwitdh;
                    this.chart.render(true, true, false);
                };

                if (!!scope.dimensions)
                    definition.chartDefinition.dimensions = scope.dimensions;

                if (!!scope.visualRoles)
                    definition.chartDefinition.visualRoles = scope.visualRoles;

                //attributes
                if (!!attributes.pXLabels) {
                    definition.chartDefinition.xAxisLabel_visible = attributes.pXLabels != 0;
                }

                if (!!attributes.pYLabels) {
                    definition.chartDefinition.yAxisLabel_visible = attributes.pYLabels != 0;
                }

                if (!!attributes.colorRole) {
                    switch (attributes.colorRole) {
                        case 's':
                            definition.chartDefinition.colorRole = "series";
                            break;
                        case 'c':
                            definition.chartDefinition.colorRole = "category";
                            break;
                        default:
                            definition.chartDefinition.colorRole = attributes.colorRole;
                            break;
                    }
                }

                // % max in label
                if(!!attributes.axisPercent && attributes.axisPercent=="1"){
                    if (definition.chartDefinition.orientation == 'vertical'){
                        definition.chartDefinition.orthoAxisLabel_text = plotsProvider.setAxisXPercentFormat;
                    }else{
                        definition.chartDefinition.orthoAxisLabel_text = plotsProvider.setAxisYPercentFormat;
                    }
                }

                // % max in label for second axis (GDP)
                if(!!attributes.axisPercent2){
                    definition.chartDefinition.ortho2AxisLabel_text = plotsProvider.setAxisYPercentFormat;
                }

                // values visible (acronyms)
                if (!!scope.valuesVisible) {
                    definition.chartDefinition.valuesVisible = !!attributes.valuesVisible;
                }
                if ((scope.isMaximized && attributes.type == 'pie') || attributes.type=='pie') {
                    definition.chartDefinition.valuesVisible = true;
                    definition.chartDefinition.valuesAnchor = "center";
                    definition.chartDefinition.valuesLabelStyle= 'inside';
                    if (scope.isMaximized) {
                        definition.chartDefinition.valuesFont= '20px sans-serif';
                    }else {
                        definition.chartDefinition.valuesFont= '14px sans-serif';
                    }
                    definition.chartDefinition.format = {
                        percent: "#%"
                    };
                    definition.chartDefinition.dimensions= {
                        value: {
                            format: {
                                number: "#.00",
                                percent: "#%"
                            }
                        }
                    };                 
                    definition.chartDefinition.valuesOverflow= 'trim';
                    definition.chartDefinition.label_textStyle = 'black';
                    //Solve problem when maximizing chart and percentage changing
                    if (!scope.isMaximized) {
                        definition.chartDefinition.valuesMask= '{value.percent}';    
                    }else {
                        definition.chartDefinition.valuesMask = '{value}%';

                    }
                    
                    definition.chartDefinition.label_textAngle= 0;
                }

                // custom legend dot background color
                if (!!attributes.legendDotFillStyle) {
                    definition.chartDefinition.legendDot_fillStyle = attributes.legendDotFillStyle;
                    definition.chartDefinition.legendDot_strokeStyle = attributes.legendDotFillStyle;
                }

                // multichart
                if (!!attributes.multiChart) {
                    definition.chartDefinition.multiChartRole = attributes.multiChart;
                }

                // axis bar
                if (!!attributes.orthoAxisVisible) {
                    definition.chartDefinition.orthoAxisVisible = attributes.orthoAxisVisible != 0

                }

                // axis bar title
                if(!!attributes.orthoAxisTitle && (scope.isMaximized || attributes.orthoAxisTitleVisible)){
                    definition.chartDefinition.orthoAxisTitle = attributes.orthoAxisTitle;
                }

                // axis scale
                // fix ortho axis min
                if(!!attributes.axisFixedMin){
                    definition.chartDefinition.orthoAxisFixedMin = attributes.axisFixedMin;
                } else {
                    definition.chartDefinition.orthoAxisFixedMin = 0;
                }
                // fix ortho axis max
                if(!!attributes.axisFixedMax){
                    definition.chartDefinition.orthoAxisFixedMax = attributes.axisFixedMax;
                }

                if(!!attributes.axis2FixedMin){
                    definition.chartDefinition.ortho2AxisFixedMin = attributes.axis2FixedMin;
                }
                if(!!attributes.axis2FixedMax){
                    definition.chartDefinition.ortho2AxisFixedMax = attributes.axis2FixedMax;
                }


                // ortho axis step
                if(!!attributes.step){
                    definition.chartDefinition.orthoAxisTickUnit = attributes.step;
                }else if (!!attributes.axisPercent){

                    var diff = (definition.chartDefinition.orthoAxisFixedMax || 100) - (definition.chartDefinition.orthoAxisFixedMin || 0);
                    var stepVal = 25;
                    if (diff < 20){
                        stepVal = 5;
                    }else if (diff < 50){
                        stepVal = 10;
                    }else if (diff < 75){
                        stepVal = 25;
                    }
                    definition.chartDefinition.orthoAxisTickUnit = stepVal;
                }

                // ortho 2axis title
                if(!!attributes.ortho2AxisTitle){
                    definition.chartDefinition.ortho2AxisTitle = attributes.ortho2AxisTitle;
                }

                // custom bar_fillstyle function
                if (!!scope.barFillStyle) {
                    definition.chartDefinition.bar_fillStyle = scope.barFillStyle;
                }

                // show labels
                if (!!scope.labelVisible) {
                    definition.chartDefinition.label_visible = scope.labelVisible;
                }
                //label top margin
                if (!!scope.labelTop) {
                    definition.chartDefinition.label_top = scope.labelTop;
                }

                // define main chart type
                var chart;
                if (!!attributes.type) {
                    switch (attributes.type) {
                        case 'dot':
                            chart = new DotChartComponent(definition);
                            break;
                        case 'lines':
                            chart = new LineChartComponent(definition);
                            break;
                        case 'pie':
                            chart = new PieChartComponent(definition);
                            break;
                        default:
                            chart = new BarChartComponent(definition);
                    }
                }else{
                    chart = new BarChartComponent(definition);
                }

                dashboard.register(chart);


                if (!scope.contextuals || scope.contextuals.length > 0) {
                    if (!scope.contextuals) {
                        scope.contextuals = [];
                    }
                    if (!attributes.isMaximized && true){
                        scope.contextuals.push(['Maximize', 'maximize']);
                    }
                    // if(!!attributes.isMaximized && attributes.isMaximized == 'true') {
                        var ua = window.navigator.userAgent;
                        var msie = ua.indexOf("MSIE ");

                        if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) {
                            // You use IE. That´s no good.
                            [['Download raw data', 'exportData']].forEach(function (item) {
                                scope.contextuals.push(item);
                            });
                        } else if (!configService.isMobile())  {
                            [['Export as image', 'exportImage'], ['Download raw data', 'exportData']].forEach(function (item) {
                                scope.contextuals.push(item);
                            });
                        } else {
                            [['Export as image', 'exportImage'], ['Download raw data', 'exportData']].forEach(function (item) {
                                scope.contextuals.push(item);
                            });
                        }
                    // }
                }
                scope.showContextuals = (scope.contextuals && scope.contextuals.length > 0) || false;
                if (scope.showContextuals){
                    scope.items = [];
                    scope.contextuals.forEach(function (item) {
                        scope.items.push({text: item[0], action: item[1]});
                    });
                }

                var setMaximizeModeParameters = function(){
                    // New parameters to maximize mode
                    definition ['maxType'] = attributes.type;
                    definition ['id'] = attributes.id;
                    if (!!attributes.id)definition ['title'] = attributes.title;
                    definition ['chartType'] = attributes.type;
                    definition ['angle'] = attributes.angle;
                    definition ['promise'] = scope.promise;
                    definition ['country1'] = scope.country1;
                    definition ['country2'] = scope.country2;
                    definition ['valuesVisible'] = scope.valuesVisible;
                    definition ['maxLegendPos'] = attributes.maxLegendPos;
                    definition ['maxLabelTop'] = scope.maxLabelTop;
                    definition ['maxAxisPercent'] = attributes.axisPercent;
                    definition ['maxAxisPercent2'] = attributes.axisPercent2;
                    definition ['longTitle'] = attributes.longTitle;
                    definition ['baseAxisLabelLongText'] = scope.baseAxisLabelLongText;
                    definition ['orthoAxisTitle'] = attributes.orthoAxisTitle;


                    if(!!attributes.maxFunctionalLegend){
                        definition['maxFunctionalLegend'] = attributes.maxFunctionalLegend;
                    }
                    if (attributes.disableMaxLegend === undefined){
                        definition['legendClickMode'] = 'toggleVisible';
                    }else{
                        definition['legendClickMode'] = 'none';
                    }
                };

                // only set maxim properties on normal view
                if (!scope.isMaximized){
                    setMaximizeModeParameters();
                }


                /* modal service for charts*/

                /* pass definition to modal */
                var dvtModal = maximize.setModal(definition);

                /* modal open action function */
                scope.open = function (action) {

                    switch (action) {
                        case "enlarge":
                            var scrollTop=$(window).scrollTop();
                            $cookies.remove('scrollTop');
                            $cookies.put('scrollTop', scrollTop);
                            
                            scope.enlargeAction();
                            break;
                        case "retirementAge":
                            //dvtModal("retirementAge", 'HistoricalController', JSON.stringify(definition));
                            break;
                        case "HLYvsLE":
                            //dvtModal("HLYvsLE", 'HistoricalController', JSON.stringify(definition));
                            break;
                        case "maximize":
                            maximize.doMaximize(dvtModal,definition, "maximize", "MaximizeController", false);
                            break;
                        case "exportImage":
                            maximize.doMaximize(dvtModal,definition, "maximize", "MaximizeController", true);
                            break;
                        case "exportImageLink":
                            exportService.exportImageAction(scope);
                            break;
                        case "exportData":
                            exportService.exportDataAction(scope, dashboard);
                            break;
                        default:
                            break;
                    }
                };


                // =========================
                //  graphics metadata:
                //  title, functional legend
                // TODO separar tÃ­tulo de leyenda ya que la primera puede venir de la directiva y no de db (multi-indicador)
                // =========================
                if (!!attributes.id) {
                    definition.chartDefinition.title = null;
                    var indicators = JSON.parse("["+attributes.id+ "]");
                    plotsProvider.showContextualData('', definition, scope, attributes);
                    /*indicators.forEach(function (id,index,array) {
                        $log.debug("METADATA INDICATORS FOREACH---------------------------------->");
                        $log.debug(id);
                        dataService.getIndicatorMetadata(id).then(function (dataset) {
                            $log.debug(dataset);
                            
                         });
                    });*/
                }
            }
        }
    }

    ZylkBarChartDirective.$inject = ['dataService', 'plotsProvider', 'exportService', '$log', 'maximize', '$cookies'];

    return ZylkBarChartDirective;
});
