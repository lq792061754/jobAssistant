        var length;
        var id
        $(document).ready(function(){//初始化	加载
		id = $("#id").val();
		 $.ajax({
		     type: 'GET',
		     url: "/showUserExercise",
			 data: {"id":id},
		     contentType: "application/json;cherset=utf-8",
		     dataType: "json",
		     success: function (data){
		var lts = data;
		length = lts.length;
		var head = "<span>共</span><i class='content_lit'>"+lts.length+"</i><span>题，</span><span>合计</span><i class='content_fs'>"+lts.length*2+"</i><span>分</span>";
		for (var j = 0; j < lts.length; j++){
		var body = "<li id='qu_0_"+j+"'>" +
				"<div class='test_content_nr_tt'>" +
				"<i>"+(j+1)+"</i><span>（2分）</span><font>"+lts[j].exercise_name+"</font><b class='icon iconfont'></b>" +
				"</div>" +
				"<div class='test_content_nr_main'>" +
				"<ul>" +
				"<li class='option'>" +
				"<input type='radio' value='"+lts[j].choice1+"' class='radioOrCheck' name='answer"+(j+1)+"' id='0_answer_"+(j+1)+"_option_1'/>" +
				"<label id='choice' for='0_answer_"+(j+1)+"_option_1'>" +
				"A.<p class='ue' style='display: inline;'>"+lts[j].choice1+"</p>" +
				"</label>" +
				"</li>" +
				"<li class='option'>" +
				"<input type='radio' value='"+lts[j].choice2+"' class='radioOrCheck' name='answer"+(j+1)+"' id='0_answer_"+(j+1)+"_option_2'/>" +
				"<label id='choice' for='0_answer_"+(j+1)+"_option_2'>" +
				"B.<p class='ue' style='display: inline;'>"+lts[j].choice2+"</p>" +
				"</label>" +
				"</li>" +
				"<li class='option'>" +
				"<input type='radio' value='"+lts[j].choice3+"' class='radioOrCheck' name='answer"+(j+1)+"' id='0_answer_"+(j+1)+"_option_3'/>" +
				"<label id='choice' for='0_answer_"+(j+1)+"_option_3'>" +
				"C.<p class='ue' style='display: inline;'>"+lts[j].choice3+"</p>" +
				"</label>" +
				"</li>"+
				"<li class='option'>" +
				"<input type='radio' value='"+lts[j].choice4+"' class='radioOrCheck' name='answer"+(j+1)+"' id='0_answer_"+(j+1)+"_option_4'/>" +
				"<label id='choice' for='0_answer_"+(j+1)+"_option_4'>" +
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
    function submitCheck() {
    	var undo = 0;
        var _list = [];
        _list[0] = id;//将id存入数组
        for (var i = 1; i <= length; i++) {
        	var radioName = "answer"+ i;
        	var val=$('input:radio[name='+ radioName +']:checked').val();
        	if (val == null) {
        		undo++;
        	}
        _list[i] = val;
        }
        if(confirm('还有'+undo+'道题没做,确定要提交吗？')) {
        $(".alt-1").empty();
        $("#test_jiaojuan").hide();
        $(".radioOrCheck").attr("disabled", true);
          $.ajax({  
              url: "/checkAnswer",
              data: "list="+_list,
              dataType: "json",
              type: "POST",
              success: function (data) {
                  alert("123456");//后台返回的json数据是一个纯String类型的对象时，前端dataType属性设置为json后，会认为这个由String对象转换的json数据格式不是标准的json格式
              }  
          });
        }
    }