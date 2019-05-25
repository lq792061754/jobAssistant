    var num = 1;
    $(document).ready(function(){//初始化	加载
    	ajaxLoadComment(num);
    });
    function ajaxLoadComment(num) {
    	var id = $("#uid").val();
    	$.ajax({
			type: "GET",
			url: "/getReplyComment",
			contentType: "application/json;cherset=utf-8",
			data: {"page": num, "id": id},
		    dataType: "json",
		    success: function (data){
		    	var list = data.list;
		    	if (list == "")	
		    		$("#error").append("还没有回复...");
		    for (var i in list) {
		    	var body = "<li class='item cl'> <i class='avatar size-L radius'>" +
		    			"<img alt='头像' src='img/head3.jpg'></i>" +
		    		"<div class='comment-main'>" +
		    			"<header class='comment-header'>" +
		    			  "<div class='comment-meta'>" +
		    			    "<a class='comment-author' href='#'>"+list[i].commenter+"</a>" +
		    			    "<time class='f-r'>"+list[i].comment_time+"</time>" +
		    			  "</div>" +
		    			"</header>" +
		    				"<div class='comment-body'>"+list[i].comment_content+
		    			"<a href='mydetail?post_id="+list[i].post_id+"' class='hf f-r btn btn-default size-S mt-10'>查看详情" +"</a>" +
		    				"</div>" +
		    			"</div>" +
		    			"</li>";
		    $("#showComment").append(body);
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