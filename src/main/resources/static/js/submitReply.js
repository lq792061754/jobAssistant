function submitReply() {
	var Reply = {};
	Reply["replier_id"] = $("#userId").val();
	Reply["comment_id"] = $("#cid").val();
	Reply["reply_content"] = $("#replyContent").val();
	$.ajax({
		type: "GET",
		url: "/insertReply",
		data: Reply,
		contentType: "application/json;cherset=utf-8",
		dataType: "json",
		success: function(data){
			if (data.MSG == 1)
				alert("回复成功");
			else
				alert("回复失败");
		},
		error: function(){
			alert("请求失败...");
		}
		
	})
}