    $(document).ready(function(){//初始化	加载
    	var id = $("#pid").val();
    	 $.ajax({
		     type: 'GET',
		     url: "/showJPostDetail",
		     data: {"id": id}, //传输的数据
		     contentType: "application/json;cherset=utf-8",
		     dataType: "json",
		     success: function (data){
		$("#title").append(data.JPostVo.post_title);
		var body = "<h2 class='c_titile'>"+data.JPostVo.post_title+"</h2>" +
				"<p class='box_c'>" +
				"<span class='d_time'>发布时间："+data.JPostVo.pub_time+"</span>" +
				"<span>作者："+data.JPostVo.writer+"</span>" +
				"<span>评论（"+data.JPostVo.post_comments_num+"）</span>" +
				"</p>" +
				"<ul class='infos'>"+data.JPostVo.post_content +
				"<p>&nbsp;</p>" +
				"</ul>";
		if (data.NEXT == null && data.PRE != null) {
			body = body + "<div class='nextinfo' style='color: black;'>" +
			"<p class='last'>上一篇：<a style='color:royalblue;font-size: 15px' href='talkdetail?post_id="+data.PRE.post_id+"'>"+data.PRE.post_title+"</a></p>" +
			"</div>"
		}
		if (data.PRE == null && data.NEXT != null) {
			body = body + "<div class='nextinfo'>" +
			"<p class='next'>下一篇：<a style='color:royalblue;font-size: 15px' href='talkdetail?post_id="+data.NEXT.post_id+"'>"+data.NEXT.post_title+"</a></p>" +
			"</div>"
		}
		if (data.PRE != null && data.NEXT != null) {
			body = body + "<div class='nextinfo'>" +
			"<p class='last'>上一篇：<a style='color:royalblue;font-size: 15px' href='talkdetail?post_id="+data.PRE.post_id+"'>"+data.PRE.post_title+"</a></p>" +
			"<p class='next'>下一篇：<a style='color:royalblue;font-size: 15px' href='talkdetail?post_id="+data.NEXT.post_id+"'>"+data.NEXT.post_title+"</a></p>" +
			"</div>"
		}
		$("#content").append(body);
				}, 
				error: function() {   //失败的回调函数
					alert("该内容已删除或者丢失...");
				} 
			})		
    });