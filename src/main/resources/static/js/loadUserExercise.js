        var length;
        var id;
        var time;//剩余时间
        var flag = true;
        var myArray=new Array();
        $(document).ready(function(){//初始化	加载
        jump(60*60);
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
		var head = "<span>共</span><i class='content_lit'>"+lts.length+"</i><span>题，</span><span>合计</span>" +
				"<i class='content_fs'>"+lts.length*2+"</i><span>分</span>";
		for (var j = 0; j < lts.length; j++){
		var body = "<li id='qu_0_"+j+"'>" +
				"<div class='test_content_nr_tt'>" +
				"<i>"+(j+1)+"</i><span>（2分）</span><font>"+lts[j].exercise_name+"</font><b class='icon iconfont'></b>" +
				"</div>" +
				"<div class='test_content_nr_main'>" +
				"<ul><li class='res'><span class='resmsg"+j+"' style='margin-left: 10px;'></span></li>" +
				"<li class='option'>" +
				"<input type='radio' value='A' class='radioOrCheck' name='answer"+(j+1)+"' id='0_answer_"+(j+1)+"_option_1'/>" +
				"<label id='choice' for='0_answer_"+(j+1)+"_option_1'>" +
				"A.<p class='ue' style='display: inline;'>"+lts[j].choice1+"</p>" +
				"</label>" +
				"</li>" +
				"<li class='option'>" +
				"<input type='radio' value='B' class='radioOrCheck' name='answer"+(j+1)+"' id='0_answer_"+(j+1)+"_option_2'/>" +
				"<label id='choice' for='0_answer_"+(j+1)+"_option_2'>" +
				"B.<p class='ue' style='display: inline;'>"+lts[j].choice2+"</p>" +
				"</label>" +
				"</li>" +
				"<li class='option'>" +
				"<input type='radio' value='C' class='radioOrCheck' name='answer"+(j+1)+"' id='0_answer_"+(j+1)+"_option_3'/>" +
				"<label id='choice' for='0_answer_"+(j+1)+"_option_3'>" +
				"C.<p class='ue' style='display: inline;'>"+lts[j].choice3+"</p>" +
				"</label>" +
				"</li>"+
				"<li class='option'>" +
				"<input type='radio' value='D' class='radioOrCheck' name='answer"+(j+1)+"' id='0_answer_"+(j+1)+"_option_4'/>" +
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
    function jump(count) {
          window.setTimeout(function(){
          if (flag) {
          count--;
          if(count > 0) {
            jump(count);
            } else {
            alert("时间到！");
            $('#test_jiaojuan').click();
            }
                   }
          }, 1000);
        time = count;
        }
    function submitCheck() {
    	var undo = 0;
        for (var i = 0; i < length; i++) {
        	var radioName = "answer"+ (i+1);
        	var val=$('input:radio[name='+ radioName +']:checked').val();
        	if (typeof(val) == "undefined") {
        		undo++;
        	}
        	myArray[i] = val;
        }
        if (undo == 0)
        var str = "确定提交？"
        else
        	var str = '还有'+undo+'道题没做,确定要提交吗？';
        if(time == 1 || confirm(str)) {
        flag = false;
        $(".alt-1").empty();
        $("#test_jiaojuan").hide();
        $(".radioOrCheck").attr("disabled", true);
          $.ajax({  
              url: "/checkAnswer",
              data: {"id":id},
              dataType: "json",
              type: "POST",
              success: function (data) {
              $(".res").attr("class","resstyle");
              var score = 0;
                  for (var num = 0; num < length; num++) {
                    if (typeof(myArray[num]) == "undefined")
                    	myArray[num] = "未选择";
                  var str = "answer" + num;
                  if (data[str] != myArray[num]) {
                  var msg = "正确答案："+data[str]+"&nbsp;&nbsp;&nbsp;&nbsp;你的答案："+myArray[num]+"<font color='red'>（错误）</font>";
                  } else {
                  var msg = "正确答案："+data[str]+"&nbsp;&nbsp;&nbsp;&nbsp;你的答案："+myArray[num]+"<font color='green'>（正确）</font>";
                  score++;
                  }
                  $(".resmsg"+num+"").append(msg);
                }
                  $("#score").append("得分："+score*2);
              }  
          });
        }
    }