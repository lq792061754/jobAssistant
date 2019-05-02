	$(document).ready(function(){//初始化	加载
		var id = $("#id").val();
		 $.ajax({
		     type: 'GET',
		     url: "/showUserExercise",
			 data: {"id":id},
		     contentType: "application/json;cherset=utf-8",
		     dataType: "json",
		     success: function (data){
		var lts = data;
		var head = "<span>共</span><i class='content_lit'>"+lts.length+"</i><span>题，</span><span>合计</span><i class='content_fs'>"+lts.length*2+"</i><span>分</span>";
		for (var j = 0; j < lts.length; j++){
		var body = "<li id='qu_0_"+j+"'>" +
				"<div class='test_content_nr_tt'>" +
				"<i>"+(j+1)+"</i><span>（2分）</span><font>"+lts[j].exercise_name+"</font><b class='icon iconfont'></b>" +
				"</div>" +
				"<div class='test_content_nr_main'>" +
				"<ul>" +
				"<li class='option'>" +
				"<input type='radio' class='radioOrCheck' name='answer"+(j+1)+"' id='0_answer_"+(j+1)+"_option_1'/>" +
				"<label for='0_answer_"+(j+1)+"_option_1'>" +
				"A.<p class='ue' style='display: inline;'>"+lts[j].choice1+"</p>" +
				"</label>" +
				"</li>" +
				"<li class='option'>" +
				"<input type='radio' class='radioOrCheck' name='answer"+(j+1)+"' id='0_answer_"+(j+1)+"_option_2'/>" +
				"<label for='0_answer_"+(j+1)+"_option_2'>" +
				"B.<p class='ue' style='display: inline;'>"+lts[j].choice2+"</p>" +
				"</label>" +
				"</li>" +
				"<li class='option'>" +
				"<input type='radio' class='radioOrCheck' name='answer"+(j+1)+"' id='0_answer_"+(j+1)+"_option_3'/>" +
				"<label for='0_answer_"+(j+1)+"_option_3'>" +
				"C.<p class='ue' style='display: inline;'>"+lts[j].choice3+"</p>" +
				"</label>" +
				"</li>"+
				"<li class='option'>" +
				"<input type='radio' class='radioOrCheck' name='answer"+(j+1)+"' id='0_answer_"+(j+1)+"_option_4'/>" +
				"<label for='0_answer_"+(j+1)+"_option_4'>" +
				"D.<p class='ue' style='display: inline;'>"+lts[j].choice4+"</p>" +
				"</label>" +
				"</li>" +
				"</ul>" +
				"</div>" +
				"</li>";
		$("#exe_body").append(body);
		}
		for (var i = 0; i < lts.length; i++){			
		var foot = "<li><a href='#qu_0_"+i+"'>"+(i+1)+"</a></li>";
		$("#exe_foot").append(foot);
		}
		$("#exe_head").append(head);					
				}, 
				error: function() {   //失败的回调函数
					 console.log("error");
				} 
			})		
	});
	