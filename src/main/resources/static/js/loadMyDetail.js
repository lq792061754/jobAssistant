       var x = 0;
$(document).ready(function(){//初始化	加载
    	var id = $("#pid").val();
    	var num = 1;
    	ajaxLoadDetail(id);
    	ajaxLoadComment(id, num);
    });
    function pubComment() {
    	var Comment = {};
    	Comment["post_id"] = $("#pid").val();
    	Comment["commenter_id"] = $("#userId").val();
    	Comment["comment_content"] = $("#textarea1").val();
        $.ajax({
        	type: "POST",
        	url: "/insertComment",
        	data: Comment,
            dataType: "json",
        	success : function(data){
        		if (data.type == 1) {
        		alert("发布成功");
    		    window.location.reload();
    		    }	
        		else
        			alert("发布失败");
        	},
        	error : function(){
        		alert("请求失败");
        	}
        });
    }
    function ajaxLoadComment(id, num) {
    	$.ajax({
			type: "GET",
			url: "/getAllComment",
			contentType: "application/json;cherset=utf-8",
			data: {"id": id, "page": num},
		    dataType: "json",
		    success: function (data){
		    	var list = data.list;
		    	var flag = true;	
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
		    			"<ul class='commentList"+x+"' style='display:none'></ul>" +
		    				"</div>" +
		    			"</div>" +
		    			"</li>";
		    $("#showComment").append(body);
		    x++;
		    flag = false;
		      }
		    if (flag)
		    $("#error").append("还没有评论...");
		},
		    error: function() {//失败的回调函数
		    	alert("请求失败...");
		    }
		})
    }
    function ajaxLoadDetail(id) {
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
		$("#content").append(body);
				}, 
				error: function() {   //失败的回调函数
					alert("该内容已删除或者丢失...");
				} 
			})
    }
    function loadReply(element, id) {
    	if($(".commentList" + element + "").css("display")=="none"){//判断是否隐藏
			$(".commentList" + element + "").show();//当前隐藏就显示
		}else{
			$(".commentList" + element + "").hide();//当前显示就隐藏
			$(".commentList" + element + "").empty();//清空当前显示内容
			return;
		}
    	var body = "";
    	$.ajax({
   	     type: 'GET',
   	     url: "/getAllReply",
   	     data: {"id": id}, //传输的数据
   	     contentType: "application/json;cherset=utf-8",
   	     dataType: "json",
   	     success: function (data){
   	    	var li = data;
   		    for (var j in li) {
   		    body += "<li class='item cl'>" +
   		    			"<a href='#'><i class='avatar size-L radius'>" +
   		    			"<img src='img/head4.jpg'>" +
   		    			"</i></a>" +
   		    	"<div class='comment-main'>" +
   		    		"<header class='comment-header'>" +
   		    			"<div class='comment-meta'>" +
   		    			 "<a class='comment-author' href='#'>"+li[j].replier+"</a>" +
   		    			 "<time class='f-r'>"+li[j].reply_time+"</time>" +
   		    			"</div>" +
   		    		"</header>" +
   		    		"<div class='comment-body'>"+li[j].reply_content+"</div>" +
   		    	"</div>" +
   		    		"</li>";
   		      }
   		$(".commentList" + element + "").append(body);
   			}, 
   			error: function() {   //失败的回调函数
   				console.log("没有回复...");
   			} 
   		})
    }