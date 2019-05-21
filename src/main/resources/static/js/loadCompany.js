 $(document).ready(function(){//初始化加载
	 var body = "";
		 $.ajax({
		     type: 'GET',
		     url: "/getAllCompanyMsg",
		     contentType: "application/json;cherset=utf-8",
		     dataType: "json",
		     success: function (data){
		    for (var i = 0; i < data.length; i++) {
		    body += "<dl class='service_project_dl01 fl'>" +
		    "<dd class='service_project_name'>"+data[i].company_name+"</dd>" +
		    "<dd class='service_project_int'>网申："+data[i].start_time+"~"+data[i].end_time+"</dd>"+
		    "<dd class='service_project_int'>笔试："+data[i].test_time+"</dd>" +
		    "<dd class='service_project_int'>地点："+data[i].hold_place+"</dd>" +
		    "<dd class='service_project_word'>简介："+data[i].need_brief+"</dd>" +
		    "<dd class='service_project_int' style='text-align: center;'>" +
		    "<a style='color:blue;' href='"+data[i].post_url+"' target='_blank'>我要投递</a></dd>" +
		    "</dl>";
		    }
		    $("#hhh").append(body);
				}, 
				error: function() {   //失败的回调函数
				 console.log("error");
				} 
			})		
	});