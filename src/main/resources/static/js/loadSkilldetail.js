$(document).ready(function(){//初始化	加载
	var id = $("#sid").val();
	ajaxLoadDetail(id);
    });
function ajaxLoadDetail(id) {
    	$.ajax({
		     type: 'GET',
		     url: "/showSkilldetail",
		     data: {"id": id}, //传输的数据
		     contentType: "application/json;cherset=utf-8",
		     dataType: "json",
		     success: function (data){
		$("#title").append(data.Skill.skill_title);
		var body = "<h2 class='c_titile'>"+data.Skill.skill_title+"</h2>" +
				"<ul class='infos'>"+data.Skill.skill_content +
				"<p>&nbsp;</p>" +
				"</ul>";
		$("#skillContent").append(body);
				}, 
				error: function() {   //失败的回调函数
					alert("该内容已删除或者丢失...");
				} 
			})
    }