var num = 1;
var x = 0;
    $(document).ready(function(){//初始化	加载
    	loadPage(1);
    });
	function loadPage(num) {
		var id = $("#userId").val();
		 $.ajax({ 
		     type: 'GET',
		     url: "/showMyJPost",
		     data: {"page": num, "id": id}, //传输的数据
		     contentType: "application/json;cherset=utf-8",
		     dataType: "json",
		     success: function (data){
		var list = data.list;
		if (list == ""){
			$("#nomood").empty();
			$("#nomood").append("<span style='font-size: 15px;'>没有更多了...</span>");
		}
		for (var i in list){
		var body = "<div class='cd-timeline-block'>" +
				"<div class='cd-timeline-img cd-picture'>" +
				"<img src='css/timeline/cd-icon-location.svg' alt='position'>" +
				"</div>" +
				"<div class='cd-timeline-content'>" +
				"<h4>"+list[i].post_title+"</h4>" +
				"<div id='icon' style='text-align: end;'><i class='Hui-iconfont' title='热度'>&#xe6c1;"+list[i].post_heat+"</i>" +
				"&nbsp;&nbsp;<i class='Hui-iconfont' title='评论'>&#xe622;"+list[i].post_comments_num+"</i>" +
				"</div>" +
				"<div class='desc"+x+"'>"+list[i].post_content+"</div>" +
				"<a href='mydetail?post_id="+list[i].post_id+"' class='f-r'>" +
				"<input class='btn btn-success size-S' type='button' value='更多'>" +
				"</a>" +
				"<span class='cd-date'>"+list[i].pub_time+"</span>" +
				"</div>" +
				"</div>";
		$(".timeline").append(body);
		var str = $('.desc'+x+'').text().substr(0,30) + '...';
        $('.desc'+x+'').text(str);
        x++;
		}
				}, 
				error: function() {   //失败的回调函数
					$(".timeline").append("请求失败...");
				} 
			})		
}
	function loadMoreMood() {
		num = num + 1;
		loadPage(num);
	}