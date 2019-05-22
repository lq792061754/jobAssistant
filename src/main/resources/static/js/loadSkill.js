    var num = 1;
    var x = 1;
    $(document).ready(function(){//初始化	加载
    	num = 1;
    	loadPage(num);
    });
	function loadPage(num) {
		 $.ajax({
		     type: 'GET',
		     url: "/showSkill",
		     data: {"page": num}, //传输的数据
		     contentType: "application/json;cherset=utf-8",
		     dataType: "json",
		     success: function (data){
		var list = data.list;
		if (list == ""){
			$("#nomore").empty();
			$("#nomore").append("<span style='font-size: 15px;'>没有更多了...</span>");
		}
		for (var i in list){
		var classname = "";
		if (x % 2 == 0) 
			classname = "new2";
			else
				classname = "new";
		var body = "<div class='"+classname+"'>" +
				"<div class='news_con'>" +
				"<div class='news_con_int'>" +
				"<div class='news_title'>【标题】"+list[i].skill_title+"</div>" +
				"<div style='font-size: 16px;' class='news_word"+x+"'>"+list[i].skill_content+"</div>" +
				"<div style='margin-bottom: 20px;margin-top: 10px;font-size: 16px;' class='news_add'><span>日期：</span>"+list[i].skill_time+"</div>" +
				"<div class='news_read_more'>" +
				"<a href='showSkilldetailIndex?sid="+list[i].skill_id+"'>" +
				"<img src='images/images/news_read_more.gif' style='float: right;margin-top: -25px;'/>" +
				"</a>" +
				"</div></div>" +
				"<div class='clear'></div>" +
				"</div></div>";
		$(".content").append(body);
		$(".new2").css({"background-color" : "aliceblue"});
		var str = $('.news_word'+x+'').text().substr(0,150) + '......';
        $('.news_word'+x+'').text(str);
        x++;
		}
				}, 
				error: function() {//失败的回调函数
					alert("请求失败...");
				} 
			})		
}
	function loadMore() {
		num = num + 1;
		loadPage(num);
	}