(function(global) {

	var Samples = global.Samples || (global.Samples = {});

	Samples.items = [{
		title: '条形图',
        items: [{
			title: '垂直',
			path: '../samples/charts/bar/vertical.html'
		}, {
			title: '卧式',
			path: '../samples/charts/bar/horizontal.html'
		}, {
			title: '多轴',
			path: '../samples/charts/bar/multi-axis.html'
		}, {
			title: '堆放',
			path: '../samples/charts/bar/stacked.html'
		}, {
			title: '堆叠组',
			path: '../samples/charts/bar/stacked-group.html'
		}]
	}, {
		title: '线图',
		items: [{
			title: '基本知识',
			path: '../samples/charts/line/basic.html'
		}, {
			title: '多轴',
			path: '../samples/charts/line/multi-axis.html'
		}, {
			title: '阶梯式',
			path: '../samples/charts/line/stepped.html'
		}, {
			title: '插值',
			path: '../samples/charts/line/interpolation-modes.html'
		}, {
			title: '线条样式',
			path: '../samples/charts/line/line-styles.html'
		}, {
			title: '点样式',
			path: '../samples/charts/line/point-styles.html'
		}, {
			title: '点数',
			path: '../samples/charts/line/point-sizes.html'
		}]
	}, {
		title: '区域图表',
		items: [{
			title: '边界（线）',
			path: '../samples/charts/area/line-boundaries.html'
		}, {
			title: '数据集（行）',
			path: '../samples/charts/area/line-datasets.html'
		}, {
			title: '堆叠（线）',
			path: '../samples/charts/area/line-stacked.html'
		}, {
			title: '雷达',
			path: '../samples/charts/area/radar.html'
		}]
	}, {
		title: '其他图表',
		items: [{
			title: '分散',
			path: '../samples/charts/scatter/basic.html'
		}, {
			title: '散射-多轴',
			path: '../samples/charts/scatter/multi-axis.html'
		}, {
			title: '甜甜圈',
			path: '../samples/charts/doughnut.html'
		}, {
			title: '馅饼',
			path: '../samples/charts/pie.html'
		}, {
			title: '极地地区',
			path: '../samples/charts/polar-area.html'
		}, {
			title: '雷达',
			path: '../samples/charts/radar.html'
		}, {
			title: '组合栏/线',
			path: '../samples/charts/combo-bar-line.html'
		}]
	}, {
		title: '线性比例',
		items: [{
			title: '一步的大小',
			path: '../samples/scales/linear/step-size.html'
		}, {
			title: '最小和最大',
			path: '../samples/scales/linear/min-max.html'
		}, {
			title: 'MIN＆MAX（建议）',
			path: '../samples/scales/linear/min-max-suggested.html'
		}]
	}, {
		title: '对数标度',
		items: [{
			title: '线',
			path: '../samples/scales/logarithmic/line.html'
		}, {
			title: '分散',
			path: '../samples/scales/logarithmic/scatter.html'
		}]
	}, {
		title: '时间尺度',
		items: [{
			title: '线',
			path: '../samples/scales/time/line.html'
		}, {
			title: '行（点数据）',
			path: '../samples/scales/time/line-point-data.html'
		}, {
			title: '时间序列',
			path: '../samples/scales/time/financial.html'
		}, {
			title: '组合',
			path: '../samples/scales/time/combo.html'
		}]
	}, {
		title: '规模选择',
		items: [{
			title: '网格线显示',
			path: '../samples/scales/gridlines-display.html'
		}, {
			title: '网格线样式',
			path: '../samples/scales/gridlines-style.html'
		}, {
			title: '多行标签',
			path: '../samples/scales/multiline-labels.html'
		}, {
			title: '过滤标签',
			path: '../samples/scales/filtering-labels.html'
		}, {
			title: '非数值Y轴',
			path: '../samples/scales/non-numeric-y.html'
		}, {
			title: '切换刻度类型',
			path: '../samples/scales/toggle-scale-type.html'
		}]
	}, {
		title: '传说',
		items: [{
			title: '定位',
			path: '../samples/legend/positioning.html'
		}, {
			title: '点样式',
			path: '../samples/legend/point-style.html'
		}, {
			title: '回调',
			path: '../samples/legend/callbacks.html'
		}]
	}, {
		title: '拓普',
		items: [{
			title: '定位',
			path: '../samples/tooltips/positioning.html'
		}, {
			title: '互动互动',
			path: '../samples/tooltips/interactions.html'
		}, {
			title: '回调',
			path: '../samples/tooltips/callbacks.html'
		}, {
			title: '边界',
			path: '../samples/tooltips/border.html'
		}, {
			title: 'HTML TOOLTIPS（行）',
			path: '../samples/tooltips/custom-line.html'
		}, {
			title: 'HTML TOOLTIPS（PIE）',
			path: '../samples/tooltips/custom-pie.html'
		}, {
			title: 'HTML TOOLTIPS（要点）',
			path: '../samples/tooltips/custom-points.html'
		}]
	}, {
		title: '脚本表',
		items: [{
			title: '酒吧图',
			path: '../samples/scriptable/bar.html'
		}, {
			title: '气泡图',
			path: '../samples/scriptable/bubble.html'
		}, {
			title: '饼形图',
			path: '../samples/scriptable/pie.html'
		}, {
			title: 'L线图',
			path: '../samples/scriptable/line.html'
		}, {
			title: '极地图',
			path: '../samples/scriptable/polar.html'
		}, {
			title: '雷达图',
			path: '../samples/scriptable/radar.html'
		}]
	}, {
		title: '高级',
		items: [{
			title: '进度条',
			path: 'advanced/progress-bar.html'
		}, {
			title: '内容安全政策',
			path: '../samples/advanced/content-security-policy.html'
		}]
	}];

}(this));

/*--------------
条形图
垂直
卧式
多轴
堆放
堆叠组

线图
基本知识
多轴
阶梯式
插值
线条样式
点样式
点数


区域图表
边界（线）
数据集（行）
堆叠（线）
雷达

其他图表
分散
散射-多轴
甜甜圈
馅饼
极地地区
雷达
组合栏/线


线性比例
一步的大小
最小和最大
MIN＆MAX（建议）

对数标度
线
分散

时间尺度
线
行（点数据）
时间序列
组合

规模选择
网格线显示
网格线样式
多行标签
过滤标签
非数值Y轴
切换刻度类型

传说
定位
点样式
回调

拓普
定位
互动互动
回调
边界
HTML TOOLTIPS（行）
HTML TOOLTIPS（PIE）
HTML TOOLTIPS（要点）


脚本表
酒吧图
气泡图
饼形图
线图
极地图
雷达图

高级
进度条
内容安全政策

-----------------*/