    var num = 1;
    var x = 0;
    $(document).ready(function(){//初始化	加载
    	loadPage(1);
    });
    function ajaxLoadComment(num) {
    	$.ajax({
			type: "GET",
			url: "/getAllComment",
			contentType: "application/json;cherset=utf-8",
			data: {"page": num},
		    dataType: "json",
		    success: function (data){
		    	var list = data.list;
		    	if (list == "")	
		    		$("#error").append("还没有评论...");
		    for (var i in list) {
		    	var body = "<li class='item cl'> <i class='avatar size-L radius'>" +
		    			"<img alt='头像' src='img/head3.jpg'></i>" +
		    		"<div class='comment-main'>" +
		    			"<header class='comment-header'>" +
		    			  "<div class='comment-meta'><input id='cid' type='hidden' value='"+list[i].comment_id+"' />" +
		    			    "<a class='comment-author' href='#'>"+list[i].commenter+"</a>" +
		    			    "<time class='f-r'>"+list[i].comment_time+"</time>" +
		               "<i onclick='loadReply("+x+", "+list[i].comment_id+")' style='float: right;margin-right: 20px;' class='Hui-iconfont' title='回复'>" +
		                "&#xe622;回复（"+list[i].comment_note+"）</i>" +
		    			  "</div>" +
		    			"</header>" +
		    				"<div class='comment-body'>"+list[i].comment_content+
		    			"<ul class='commentList"+x+"' style='display:none'></ul><button id='reply' class='hf f-r btn btn-default size-S mt-10'>回复" +"</button>" +
		    				"</div>" +
		    			"</div>" +
		    			"</li>";
		    $("#showComment").append(body);
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