(function(){
	// companyAddr
	// $(document).on("click", "#show-actions", function() {
	// 	$.actions({
	// 		actions: [
	// 			{
	// 				text: "苹果导航",
	// 				className: "color-primary",
	// 				onClick: function() {
	// 					$.alert("定位成功");
	// 				}
	// 			},
	// 			{
	// 				text: "高德导航",
	// 				className: "color-warning",
	// 				onClick: function() {
	// 					$.alert("定位成功");
	// 				}
	// 			}
	// 		]
	// 	});
	// });
	// mineSetCenter
	$(document).on("click", "#show-actions", function() {
	$.actions({
	title: "切换身份",
	actions: [
					{
							text: "我要找工作",
							className: "color-primary",
							onClick: function() {
									window.location.href="mineFindJob.html"
							}
					},
					{
							text: "我要招人",
							className: "color-primary",
							onClick: function() {
									window.location.href="mineFindJob.html"
							}
					}
				]
			});
	});
	$(document).on("click", "#show-actions1", function() {
		$.actions({
		title: "账号绑定",
		actions: [
				{
						text: "绑定QQ账号",
						className: "color-primary",
						onClick: function() {
								$.alert("完成绑定", "绑定QQ账号");
						}
				},
				{
						text: "绑定微信账号",
						className: "color-primary",
						onClick: function() {
								$.alert("完成绑定", "绑定微信账号");
						}
				},
				{
						text: "绑定微博账号",
						className: "color-primary",
						onClick: function() {
								$.alert("完成绑定", "绑定微博账号");
						} 
				}
			]
		});
	});
	//remarks
	// $(document).on("click", "#show-prompt", function() {
	// 		$.prompt({
	// 				title: "添加备注",
	// 				input1: '操作人',
	// 				onOK: function(text) {
	// 						 $.alert("您的备注是:"+text, "成功添加备注");
	// 				},
	// 		});
	// });
	//subscribe
	$(document).on("click", "#show-prompt", function() {
			$.prompt({
					text: "关键词请尽量简洁如‘投资经理’、‘销售’、‘土建工程师’，‘Java开发’",
					title: "添加期望职位",
					onOK: function(text) {
					$.alert("您的职位是:"+text, "职位添加成功");
					},
					onCancel: function() {
					console.log("取消了");
					},
					input: '请输入您期望的职位'
			});
	});
	//zhiwei
	$(".zhiwei").select({
			title: "安排职位",
			items: [
				{
					title: "C#工程师",
					value: "001",
				},
				{
					title: "Java工程师",
					value: "002",
				},
				{
					title: "网页设计",
					value: "003",
				},
				{
					title: "前端开发",
					value: "004",
				},
				{
					title: "PHP后端开发",
					value: "005",
				},
				{
					title: "平面设计师",
					value: "006",
				},
				{
					title: "平台架构师",
					value: "007",
				},
				{
					title: "IOS开发",
					value: "008",
				},
				{
					title: "安卓开发",
					value: "009"
				}
			]
		});
	//resume
	$("#Curlocat").cityPicker({
			title: "现所在地",
			onChange: function (picker, values, displayValues) {
			console.log(values, displayValues);
			}
	});
	$("#Curlocat1").cityPicker({
		title: "期望地点",
		onChange: function (picker, values, displayValues) {
		console.log(values, displayValues);
		}
  });
	$("#date").calendar({
			value: ['2016-12-12'],
			dateFormat: 'yyyy年mm月dd日',
	});
	$("#date2").calendar({
			value: ['2016-12-12'],
			dateFormat: 'yyyy年mm月dd日'  
	});
	$("#userType").select({
			title: "用户类型",
			items: [
					{
							title: "社会人士",
							value: "001",
					},
					{
							title: "应届毕业生",
							value: "002"
					}
			]
	});
	$("#sex").select({
			title: "性别",
			items: [
					{
							title: "男",
							value: "001",
					},
					{
							title: "女",
							value: "002"
					}
			]
	});
	// resumeQzyx
	$("#in").select({
				title: "希望岗位",
				multi: true,
				min: 2,
				max: 3,
				items: [
						{
								title: "网页设计",
								value: 1,
								description: "额外的数据1"
						},
						{
								title: "UI设计",
								value: 2,
								description: "额外的数据2"
						},
						{
								title: "插画设计",
								value: 3,
								description: "额外的数据3"
						},
						{
								title: "前端开发",
								value: 6,
								description: "额外的数据6"
						},
				],
				onChange: function(d) {
				console.log(this, d);
				},
				onClose: function (d) {
				console.log('close')
				},
				onOpen: function() {
					console.log("open");
				},
		});
	// resumePerfect
	// 定义工作时间 及 学习时间
	var $date = $("#date");  //开始工作时间
	var $date1 = $("#date1");//结束工作时间
	var $date2 = $("#date2");//入学时间
	var $date3 = $("#date3");//毕业时间
	var $dateP = [$date,$date1,$date2,$date3];
	for(var i=0;i<$dateP.length;i++){
			console.log(i+" "+$dateP[i]);//测试数组的index
			$dateP[i].calendar({
					value: ['2016-12-12'], //初始化时间
					dateFormat: 'yyyy年mm月dd日',
					// 自定义格式的时候，不能通过 input 的value属性赋值 '2016年12月12日' 来定义初始值，这样会导致无法解析初始值而报错。
					//只能通过js中设置 value 的形式来赋值，并且需要按标准形式赋值（yyyy-mm-dd 或者时间戳)
			});
	}
	$("#userType").select({
			title: "用户类型",
			items: [
					{
							title: "社会人士",
							value: "001",
					},
					{
							title: "应届毕业生",
							value: "002"
					}
			]
	});
	$("#userType1").select({
			title: "企业性质",
			items: [
					{
							title: "民营企业",
							value: "001",
					},
					{
							title: "私有企业",
							value: "002"
					}
			]
	});
	$("#userType2").select({
			title: "行业领域",
			items: [
					{
							title: "IT技术",
							value: "001",
					},
					{
							title: "市场营销",
							value: "002"
					}
			]
	});
})