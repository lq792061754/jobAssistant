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
					/* for(var i in lts){
		var child = "<td>" + lts[i].exercise_id +  "</td>"+
					"<td>" + lts[i].exercise_name +  "</td>"+
					"<td>" + lts[i].exercise_answer +  "</td>"+
					"<td>" + lts[i].choice1 +  "</td>"+
					"<td>" + lts[i].choice2 +  "</td>"+
					"<td>" + lts[i].choice3 +  "</td>"+
					"<td>" + lts[i].choice4 +  "</td>"+
					"<td>" + lts[i].et_name +  "</td>";
						$(".table_node").append(rowTr)//显示数据到页面
					} */
		for(var i=0;i<lts.length;i++){
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
	