    var num = 1;
    var x = 0;
    var flag = true;
    $(document).ready(function(){//初始化	加载
    	num = 1;
    	loadPage(num);
    	loadComNum();
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
		if (list == ""){
			$("#nomore").empty();
			$("#nomore").append("<span style='font-size: 15px;'>没有更多了...</span>");
		}
		for (var i in list){
		var body = "<li class='index_arc_item no_pic'>" +
				"<h3 class='title'><a style='color:cadetblue' href='talkdetail?post_id="+list[i].post_id+"'>"+list[i].post_title+"</a></h3>" +
				"<div class='date_hits'>" +
				"<span><i class='Hui-iconfont' title='热度'>&#xe62c;</i>作者："+list[i].writer+"</span>" +
				"<span><i class='Hui-iconfont' title='评论'>&#xe690;</i>时间："+list[i].pub_time+"</span>" +
				"<p style='position: absolute;right: 95px;top: 0;'><i class='Hui-iconfont' title='置顶'>&#xe679;</i>置顶</p>" +
				"<p class='hits'><i class='Hui-iconfont' title='热度'>&#xe6c1;</i>"+list[i].post_heat+"°</p>" +
				"<p class='commonts'><i class='Hui-iconfont' title='评论'>&#xe622;</i>" +
				"<span class='cy_cmt_count'>"+list[i].post_comments_num+"</span></p>" +
				"</div>" +
				"<div style='margin-top: 20px;' class='desc"+x+"'>"+list[i].post_content+"</div></li>";
		$(".index_arc").append(body);
		var str = $('.desc'+x+'').text().substr(0,100) + '...';
        $('.desc'+x+'').text(str);
        x++;
		}
				}, 
				error: function() {   //失败的回调函数
					alert("请求失败...");
				} 
			})		
}
	function loadPageByCom(num) {
		flag = false;
		$("#nomore").empty();
		 $.ajax({
		     type: 'GET',
		     url: "/showJPostByCom",
		     data: {"page": num}, //传输的数据
		     contentType: "application/json;cherset=utf-8",
		     dataType: "json",
		     success: function (data){
		var list = data.list;
		if (list == ""){
			$("#nomore").append("<span style='font-size: 15px;'>没有更多了...</span>");
		}
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
				"<div style='margin-top: 20px;' class='desc"+x+"'>"+list[i].post_content+"</div></li>";
		$(".index_arc").append(body);
		var str = $('.desc'+x+'').text().substr(0,100) + '...';
        $('.desc'+x+'').text(str);
        x++;
		}
				}, 
				error: function() {   //失败的回调函数
					alert("没有更多了...");
				} 
			})	
}
	function loadMore() {
		num = num + 1;
		if (flag)
		loadPage(num);
		else
			loadPageByCom(num);
	}
	function newRep() {
		$("#pub").css("border-bottom","0px");
		$("#rep").css("border-bottom","3px solid #9E9E9E");
		$(".index_arc").empty();
		num = 1;
		loadPageByCom(num);
	}
	function loadComNum() {
		var id = $("#userId").val();
		 $.ajax({
		     type: 'GET',
		     url: "/getReplyComNum",
		     data: {"id": id}, //传输的数据
		     contentType: "application/json;cherset=utf-8",
		     dataType: "json",
		     success: function (data){
		    	 if(parseInt(data.NEWCOM)> 0){
                     $("#msgNum").show();
                     $("#msgNum").text(parseInt(data.NEWCOM));
                 }else{
                     $("#msgNum").hide();
                 }
				}, 
				error: function() {   //失败的回调函数
					alert("请求失败...");
				} 
			})	
}