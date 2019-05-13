    var num = 1;
    $(document).ready(function(){//初始化	加载
    	loadPage(1);
    });
	function loadPage(num) {
		 $.ajax({
		     type: 'GET',
		     url: "/showJPost",
		     data: {"page": num}, //传输的数据
		     contentType: "application/json;cherset=utf-8",
		     dataType: "json",
		     success: function (data){
		var list = data.list;
		for (var i in list){
		var body = "<li class='index_arc_item no_pic'>" +
				"<h3 class='title'><a style='color:cadetblue' href='talkdetail?post_id="+list[i].post_id+"'>"+list[i].post_title+"</a></h3>" +
				"<div class='date_hits'>" +
				"<span><i class='Hui-iconfont' title='热度'>&#xe62c;</i>作者："+list[i].writer+"</span>" +
				"<span><i class='Hui-iconfont' title='评论'>&#xe690;</i>时间："+list[i].pub_time+"</span>" +
				"<p class='hits'><i class='Hui-iconfont' title='热度'>&#xe6c1;</i>"+list[i].post_heat+"°</p>" +
				"<p class='commonts'><i class='Hui-iconfont' title='评论'>&#xe622;</i>" +
				"<span class='cy_cmt_count'>"+list[i].post_comments_num+"</span></p>" +
				"</div>" +
				"<div class='desc'>"+list[i].post_content+"</div></li>";
		$(".index_arc").append(body);
		}
				}, 
				error: function() {   //失败的回调函数
					alert("没有更多了...");
				} 
			})		
}
	function loadMore() {
		num = num + 1;
		loadPage(num);
	}