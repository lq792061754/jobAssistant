function submitReply() {
	var Reply = {};
	Reply["replier_id"] = $("#userId").val();
	Reply["comment_id"] = $("#cid").val();
	Reply["reply_content"] = $("#replyContent").val();
	$.ajax({
		type: "POST",
		url: "/insertReply",
		data: Reply,
		/*contentType: "application/json;cherset=utf-8",POST不能加这句话*/
		dataType: "json",
		success: function(data){
			if (data.MSG == 1){
				alert("回复成功");
				window.location.reload();
			}
			else
				alert("回复失败");
		},
		error: function(){
			window.location.href = "/userlogin.html?msg=3";
		}
	})
}