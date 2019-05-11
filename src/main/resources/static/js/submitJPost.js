function submitJPost() {
	var JPost = {};
	JPost["writer_id"] = $("#userId").val();
    JPost["post_title"] = $("#post_title").val();
    JPost["post_content"] = $("#textarea1").val();
    $.ajax({
    	type: "GET",
    	url: "/insertJPost",
    	data: JPost,
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
    		/*Ajax请求通过XMLHttpRequest对象发送请求，该对象有四个状态（readyState）：
    		0-未初始化、1-正在初始化、2-发送数据、3-正在发送数据、4-完成。
    		当XMLHttpRequest.readyState为4时，表示ajax请求已经完成可以得到响应结果。
    		ajax的success和error方法根据响应状态码来触发。
    		当XMLHttpRequest.status为200的时候，表示响应成功，此时触发success().其他状态码则触发error()。
    		ajax还会在下列情况下走error方法：
    		1. 返回数据类型不是JSON
    		2. 网络中断
    		3. 后台响应中断*/ 
    		alert("请求失败");
    	}
    });
}