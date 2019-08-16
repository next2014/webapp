// 路径配置
require.config({
    paths: {
        echarts: './js'
    }
});
//会员发展数
function numberDevChart(obj, jsondata) {
    require(
		[
			'echarts',
			'echarts/chart/line' // 使用线性图就加载line模块，按需加载
		],
		function (ec) {
		    var axisData = new Array();//时间
		    var store = new Array();//门店
		    var hQ = new Array(); //总部
		    for (var i = 0; i < jsondata.length; i++) {
		        axisData.push(jsondata[i].ndate);//时间
		        store.push(jsondata[i].chain);//门店号
		        hQ.push(jsondata[i].www + jsondata[i].wx + jsondata[i].gh);
		    }
		    // 基于准备好的dom，初始化echarts图表
		    var myChart = ec.init(obj);
		    option = {
		        //气泡提示框，常用于展现更详细的数据
		        tooltip: {
		            //触发类型，默认数据触发，见下图，可选为：'item' | 'axis'
		            trigger: 'axis'
		        },
		        grid: { width: 260 },
		        toolbox: {
		            show: true

		        },
		        calculable: false,
		        legend: {//图列
		            data: ['门店', '总部']
		        },
		        xAxis: [//横轴
                    {
                        type: 'category',//类目型
                        boundaryGap: false,//类目起始和结束两端空白策略，见下图，默认为true留空，false则顶头
                        data: axisData,//时间
                        axisLine: {//坐标轴线
                            show: true
                        },
                        axisLabel: {//坐标轴文本标签
                            show: true
                        },
                        splitLine: {//分隔线，默认显示
                            show: false
                        }
                    }
		        ],
		        yAxis: [//纵轴
                    {
                        type: 'value',
                        name: '门店',
                        axisLabel: {
                            formatter: '{value} '
                        }
                    },
                      {
                          type: 'value',
                          name: '总部',
                          axisLabel: {
                              formatter: '{value} '
                          }
                      }
		        ],
		        series: [
                    {
                        name: '门店',
                        type: 'line',
                        smooth: true,
                        itemStyle: { normal: { areaStyle: { type: 'default' } } },
                        data: store
                    },
                     {
                         name: '总部',
                         type: 'line',
                         smooth: true,
                         yAxisIndex: 1,
                         itemStyle: { normal: { areaStyle: { type: 'default' } } },
                         data: hQ
                     }
		        ]
		    };
		    // 为echarts对象加载数据 
		    myChart.setOption(option);
		}
     );
}
//会员活跃度
function useractivityChart(obj, jsondata) {
    require(
		[
			'echarts',
			'echarts/chart/pie' // 使用饼图就加载bar模块，按需加载
		],
		function (ec) {
		    var jsonObj = new Array();
		    var axisData = new Array();
		    for (var i = 0; i < jsondata.length; i++) {
		        axisData.push(jsondata[i].name);
		        var o = new Object();
		        o.value = jsondata[i].value;
		        o.name = jsondata[i].name;
		        jsonObj.push(o);
		    }
		    // 基于准备好的dom，初始化echarts图表
		    var myChart = ec.init(obj);

		    var option = {
		        title: {
		            text: '',
		            subtext: '',
		            x: 'center'
		        },
		        tooltip: {
		            trigger: 'item',
		            formatter: "{a} <br/>{b} : {c} ({d}%)"
		        },
		        legend: {
		            orient: "horizontal",
		            x: 'left',
		            show: false
		        },
		        series: [
					{
					    name: '',
					    type: 'pie',
					    radius: '55%',
					    center: ['50%', '60%'],
					    data: jsonObj
					}
		        ]
		    };

		    // 为echarts对象加载数据 
		    myChart.setOption(option);
		}
	);
}
//本店与非本店会员消费占比
function useractivityChart(obj, jsondata) {
    require(
		[
			'echarts',
			'echarts/chart/pie' // 使用饼图就加载bar模块，按需加载
		],
		function (ec) {
		    var jsonObj = new Array();
		    var axisData = new Array();
		    for (var i = 0; i < jsondata.length; i++) {
		        axisData.push(jsondata[i].name);
		        var o = new Object();
		        o.value = jsondata[i].value;
		        o.name = jsondata[i].name;
		        jsonObj.push(o);
		    }
		    // 基于准备好的dom，初始化echarts图表
		    var myChart = ec.init(obj);

		    var option = {
		        title: {
		            text: '',
		            subtext: '',
		            x: 'center'
		        },
		        tooltip: {
		            trigger: 'item',
		            formatter: "{a} <br/>{b} : {c} ({d}%)"
		        },
		        legend: {
		            orient: "horizontal",
		            x: 'left',
		            data: axisData,
		            show: false
		        },
		        toolbox: {
		            show: true
		        },
		        series: [
					{
					    name: '',
					    type: 'pie',
					    radius: '55%',
					    center: ['50%', '60%'],
					    data: jsonObj
					}
		        ]
		    };

		    // 为echarts对象加载数据 
		    myChart.setOption(option);
		}
	);
}
//会员类型占比
function usertypeChart(obj, jsondata) {
    require(
		[
			'echarts',
			'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
		],
		function (ec) {
		    var jsonObj = new Array();
		    var axisData = new Array();
		    for (var i = 0; i < jsondata.length; i++) {
		        axisData.push(jsondata[i].name);
		        var o = new Object();
		        o.value = jsondata[i].value;
		        o.name = jsondata[i].name;
		        jsonObj.push(o);
		    }
		    // 基于准备好的dom，初始化echarts图表
		    var myChart = ec.init(obj);

		    var option = {
		        title: {
		            text: '',
		            subtext: ''
		        },
		        tooltip: {
		            trigger: 'item'
		        },
		        grid: { width: 260 },
		        legend: {
		            data: axisData,
		            show: false
		        },
		        toolbox: {
		            show: true
		        },
		        xAxis: [
					{
					    type: 'category',
					    data: axisData,
					    splitLine: {
					        show: false
					    }
					}
		        ],
		        yAxis: [
					{
					    type: 'value'
					}
		        ],
		        series: [
					{
					    name: '',
					    type: 'bar',
					    radius: '55%',
					    data: jsonObj
					}
		        ]
		    };


		    // 为echarts对象加载数据 
		    myChart.setOption(option);
		}
	);
}
//会员年龄占比
function userageChart(obj, jsondata) {
    require(
		[
			'echarts',
			'echarts/chart/pie' // 使用饼图就加载bar模块，按需加载
		],
		function (ec) {
		    var jsonObj = new Array();
		    var axisData = new Array();
		    for (var i = 0; i < jsondata.length; i++) {
		        axisData.push(jsondata[i].name);
		        var o = new Object();
		        o.value = jsondata[i].value;
		        o.name = jsondata[i].name;
		        jsonObj.push(o);
		    }
		    // 基于准备好的dom，初始化echarts图表
		    var myChart = ec.init(obj);

		    var option = {
		        title: {
		            text: '',
		            subtext: '',
		            x: 'center'
		        },
		        tooltip: {
		            trigger: 'item',
		            formatter: "{a} <br/>{b} : {c} ({d}%)"
		        },
		        legend: {
		            orient: "horizontal",
		            x: 'left',
		            data: axisData,
		            show: false
		        },
		        toolbox: {
		            show: true
		        },
		        series: [
					{
					    name: '',
					    type: 'pie',
					    radius: '55%',
					    center: ['50%', '60%'],
					    data: jsonObj
					}
		        ]
		    };

		    // 为echarts对象加载数据 
		    myChart.setOption(option);
		}
	);
}
//会员性别占比
function usersexChart(obj, jsondata) {
    require(
		[
			'echarts',
			'echarts/chart/pie' // 使用饼图就加载bar模块，按需加载
		],
		function (ec) {
		    var jsonObj = new Array();
		    var axisData = new Array();
		    for (var i = 0; i < jsondata.length; i++) {
		        axisData.push(jsondata[i].name);
		        var o = new Object();
		        o.value = jsondata[i].value;
		        o.name = jsondata[i].name;
		        jsonObj.push(o);
		    }
		    // 基于准备好的dom，初始化echarts图表
		    var myChart = ec.init(obj);

		    var option = {
		        title: {
		            text: '',
		            subtext: '',
		            x: 'center'
		        },
		        tooltip: {
		            trigger: 'item',
		            formatter: "{a} <br/>{b} : {c} ({d}%)"
		        },
		        legend: {
		            orient: "horizontal",
		            x: 'left',
		            data: axisData,
		            show: false
		        },
		        toolbox: {
		            show: true
		        },
		        series: [
					{
					    name: '',
					    type: 'pie',
					    radius: '55%',
					    center: ['50%', '60%'],
					    data: jsonObj
					}
		        ]
		    };

		    // 为echarts对象加载数据 
		    myChart.setOption(option);
		}
	);
}
//提前预订
function advanceChart(obj, jsondata) {
    require(
		[
			'echarts',
			'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
		],
		function (ec) {
		    var jsonObj = new Array();
		    var axisData = new Array();
		    for (var i = 0; i < jsondata.length; i++) {
		        axisData.push(jsondata[i].name);
		        var o = new Object();
		        o.value = jsondata[i].value;
		        o.name = jsondata[i].name;
		        jsonObj.push(o);
		    }
		    // 基于准备好的dom，初始化echarts图表
		    var myChart = ec.init(obj);

		    var option = {
		        title: {
		            text: '',
		            subtext: ''
		        },
		        grid: { width: 420 },
		        tooltip: {
		            trigger: 'item'
		        },
		        legend: {
		            data: axisData,
		            show: false
		        },
		        toolbox: {
		            show: true
		        },
		        xAxis: [
					{
					    type: 'category',
					    data: axisData,
					    splitLine: {
					        show: false
					    }
					}
		        ],
		        yAxis: [
					{
					    type: 'value'
					}
		        ],
		        series: [
					{
					    name: '',
					    type: 'bar',
					    radius: '55%',
					    data: jsonObj
					}
		        ]
		    };


		    // 为echarts对象加载数据 
		    myChart.setOption(option);
		}
	);
}
//平均入住时长
function intimeChart(obj, jsondata) {
    require(
		[
			'echarts',
			'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
		],
		function (ec) {
		    var jsonObj = new Array();
		    var axisData = new Array();
		    for (var i = 0; i < jsondata.length; i++) {
		        axisData.push(jsondata[i].name);
		        var o = new Object();
		        o.value = jsondata[i].value;
		        o.name = jsondata[i].name;
		        jsonObj.push(o);
		    }
		    // 基于准备好的dom，初始化echarts图表
		    var myChart = ec.init(obj);

		    var option = {
		        title: {
		            text: '',
		            subtext: ''
		        },
		        grid: { width: 420 },
		        tooltip: {
		            trigger: 'item'
		        },
		        legend: {
		            data: axisData,
		            show: false
		        },
		        toolbox: {
		            show: true
		        },
		        xAxis: [
					{
					    type: 'category',
					    data: axisData,
					    splitLine: {
					        show: false
					    }
					}
		        ],
		        yAxis: [
					{
					    type: 'value'
					}
		        ],
		        series: [
					{
					    name: '',
					    type: 'bar',
					    radius: '55%',
					    data: jsonObj
					}
		        ]
		    };


		    // 为echarts对象加载数据 
		    myChart.setOption(option);
		}
	);
}
//平均出租率
function rentoutChart(obj, jsondataripe, jsondataNripe) {
    require(
       [
           'echarts',
           'echarts/chart/line'
       ],
       function (ec) {
           var axisData = new Array();
           var ripe = new Array();
           var Nripe = new Array();

           //成熟
           for (var i = 0; i < jsondataripe.length; i++) {
               axisData.push(jsondataripe[i].ndate);
              
               ripe.push(jsondataripe[i].RentRate);
           }
           //爬坡期
           for (var i = 0; i < jsondataNripe.length; i++) {
               Nripe.push(jsondataNripe[i].RentRate);
           }
           // 基于准备好的dom，初始化echarts图表
           var myChart = ec.init(obj);
           var option = {
               grid: { width: 260 },
               tooltip: {
                   trigger: 'axis'
               },
               toolbox: {
                   show: true

               },
               legend: {
                   data: ['成熟', '爬坡期'],
                   show: true
               },
               xAxis: [
                   {
                       type: 'category',
                       data: axisData,
                       splitLine: {
                           show: false
                       }
                   }
               ],
               yAxis: [
                   {
                       type: 'value',
                       name: '出租率',
                       axisLabel: {
                           formatter: '{value} %'
                       }
                   }
               ],
               series: [
                   {
                       name: '成熟',
                       type: 'line',
                       data: ripe
                   },
                      {
                          name: '爬坡期',
                          type: 'line',
                          data: Nripe
                      }
               ]
           };
           // 为echarts对象加载数据 
           myChart.setOption(option);
       }
    );
}
//平均房价
function housingChart(obj, jsondataripe, jsondataNripe) {
    require(
       [
           'echarts',
           'echarts/chart/line'
       ],
       function (ec) {
           var axisData = new Array();
           var ripe = new Array();
           var Nripe = new Array();

           //成熟
           for (var i = 0; i < jsondataripe.length; i++) {
               axisData.push(jsondataripe[i].ndate);
               console.log(jsondataripe[i].AvgRoomRate)
               ripe.push(jsondataripe[i].AvgRoomRate);
             
           }
           //爬坡期
           for (var i = 0; i < jsondataNripe.length; i++) {
               Nripe.push(jsondataNripe[i].AvgRoomRate);
           }
           // 基于准备好的dom，初始化echarts图表
           var myChart = ec.init(obj);
           var option = {
               grid: { width: 260 },
               tooltip: {
                   trigger: 'axis'
               },
               toolbox: {
                   show: true

               }, calculable: false,
               legend: {
                   data: ['成熟', '爬坡期'],
                   show: true
               },
               xAxis: [
                   {
                       type: 'category',
                       data: axisData,
                       splitLine: {
                           show: false
                       }
                   }
               ],
               yAxis: [
                   {
                       type: 'value',
                       name: '平均房价',
                       axisLabel: {
                           formatter: '{value}'
                       }
                   }
               ],
               series: [
                 {
                     name: '成熟',
                     type: 'line',
                     data: ripe
                 },
                      {
                          name: '爬坡期',
                          type: 'line',
                          data: Nripe
                      }
               ]
           };
           // 为echarts对象加载数据 
           myChart.setOption(option);
       }
    );
}
//Revpar
function RevparChart(obj, jsondataripe, jsondataNripe) {
    require(
       [
           'echarts',
           'echarts/chart/line'
       ],
       function (ec) {
           var axisData = new Array();
           var ripe = new Array();
           var Nripe = new Array();

           //成熟
           for (var i = 0; i < jsondataripe.length; i++) {
               axisData.push(jsondataripe[i].ndate);
               ripe.push(jsondataripe[i].ColRevPar);
           }
           //爬坡期
           for (var i = 0; i < jsondataNripe.length; i++) {
               Nripe.push(jsondataNripe[i].ColRevPar);
           }
           // 基于准备好的dom，初始化echarts图表
           var myChart = ec.init(obj);
           var option = {
               grid: { width: 260 },
               tooltip: {
                   trigger: 'axis'
               },
               toolbox: {
                   show: true

               }, calculable: false,
               legend: {
                   data: ['成熟', '爬坡期'],
                   show: true
               },
               xAxis: [
                   {
                       type: 'category',
                       data: axisData,
                       splitLine: {
                           show: false
                       }
                   }
               ],
               yAxis: [
                   {
                       type: 'value',
                       name: 'RevPar',
                       axisLabel: {
                           formatter: '{value}'
                       }
                   }
               ],
               series: [
                   {
                       name: '成熟',
                       type: 'line',
                       data: ripe
                   },
                      {
                          name: '爬坡期',
                          type: 'line',
                          data: Nripe
                      }
               ]
           };
           // 为echarts对象加载数据 
           myChart.setOption(option);
       }
    );
}
function laChart(obj, jsondata) {
    require(
		[
			'echarts',
			'echarts/chart/pie' // 使用饼图就加载pie模块，按需加载
		],
        function (ec) {
            var jsonObj = new Array();
            var axisData = new Array();
            for (var i = 0; i < jsondata.length; i++) {
                if (jsondata[i].ntype == "1") {
                    axisData.push(jsondata[i].skey);
                    var o = new Object();
                    o.value = jsondata[i].nvalue;
                    o.name = jsondata[i].skey;
                    jsonObj.push(o);
                }
            }
            // 基于准备好的dom，初始化echarts图表
            var myChart = ec.init(obj);

            var option = {
                title: {
                    text: '',
                    subtext: '',
                    x: 'center'
                },
                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b} : {c} ({d}%)"
                },
                legend: {
                    orient: "horizontal",
                    x: 'left',
                    data: axisData,
                    show: false
                },
                toolbox: {
                    show: true
                },
                series: [
					{
					    name: '本季度',
					    type: 'pie',
					    radius: '55%',
					    center: ['50%', '60%'],
					    data: jsonObj
					}
                ]
            };


            // 为echarts对象加载数据 
            myChart.setOption(option);
        }
	);
}
function leadershipChart(obj, jsondata) {
    require(
		[
			'echarts',
			'echarts/chart/pie' // 使用饼图就加载bar模块，按需加载
		],
		function (ec) {
		    var jsonObj = new Array();
		    var axisData = new Array();
		    for (var i = 0; i < jsondata.length; i++) {
		        if (jsondata[i].ntype == "2") {
		            axisData.push(jsondata[i].skey);
		            var o = new Object();
		            o.value = jsondata[i].nvalue;
		            o.name = jsondata[i].skey;
		            jsonObj.push(o);
		        }
		    }
		    // 基于准备好的dom，初始化echarts图表
		    var myChart = ec.init(obj);

		    var option = {
		        title: {
		            text: '',
		            subtext: '',
		            x: 'center'
		        },
		        tooltip: {
		            trigger: 'item',
		            formatter: "{a} <br/>{b} : {c} ({d}%)"
		        },
		        legend: {
		            orient: "horizontal",
		            x: 'left',
		            data: axisData,
		            show: false
		        },
		        toolbox: {
		            show: true
		        },
		        series: [
					{
					    name: '本季度',
					    type: 'pie',
					    radius: '55%',
					    center: ['50%', '60%'],
					    data: jsonObj
					}
		        ]
		    };


		    // 为echarts对象加载数据 
		    myChart.setOption(option);
		}
	);
}
function agentChart(obj, jsondata) {
    require(
		[
			'echarts',
			'echarts/chart/pie' // 使用饼图就加载bar模块，按需加载
		],
		function (ec) {
		    var jsonObj = new Array();
		    var axisData = new Array();
		    for (var i = 0; i < jsondata.length; i++) {
		        if (jsondata[i].ntype == "3") {
		            axisData.push(jsondata[i].skey);
		            var o = new Object();
		            o.value = jsondata[i].nvalue;
		            o.name = jsondata[i].skey;
		            jsonObj.push(o);
		        }
		    }
		    // 基于准备好的dom，初始化echarts图表
		    var myChart = ec.init(obj);

		    var option = {
		        title: {
		            text: '',
		            subtext: '',
		            x: 'center'
		        },
		        tooltip: {
		            trigger: 'item',
		            formatter: "{a} <br/>{b} : {c} ({d}%)"
		        },
		        legend: {
		            orient: "horizontal",
		            x: 'left',
		            data: axisData,
		            show: false
		        },
		        toolbox: {
		            show: true
		        },
		        series: [
					{
					    name: '本季度',
					    type: 'pie',
					    radius: '55%',
					    center: ['50%', '60%'],
					    data: jsonObj
					}
		        ]
		    };

		    // 为echarts对象加载数据 
		    myChart.setOption(option);
		}
	);
}
//销售新签协议激活率及激活量排名表
function rateChart(obj, jsondata) {
    require(
		[
			'echarts',
			'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
		],
		function (ec) {
		    var jsonObj = new Array();
		    var axisData = new Array();
		    for (var i = 0; i < jsondata.length; i++) {
		        axisData.push(jsondata[i].name);
		        var o = new Object();
		        o.value = jsondata[i].value;
		        o.name = jsondata[i].name;
		        jsonObj.push(o);
		    }
		    // 基于准备好的dom，初始化echarts图表
		    var myChart = ec.init(obj);

		    var option = {
		        title: {
		            text: '',
		            subtext: ''
		        },
		        grid: { width:600 },
		        tooltip: {
		            trigger: 'item'
		        },
		        legend: {
		            data: axisData,
		            show: false
		        },
		        toolbox: {
		            show: true
		        },
		        xAxis: [
					{
					    type: 'category',
					    data: axisData,
					    splitLine: {
					        show: false
					    }
					}
		        ],
		        yAxis: [
					{
					    type: 'value'
					}
		        ],
		        series: [
					{
					    name: '',
					    type: 'bar',
					    radius: '55%',
					    data: jsonObj
					}
		        ]
		    };


		    // 为echarts对象加载数据 
		    myChart.setOption(option);
		}
	);
}


