        var length;
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
				"<label for='0_answer_"+(j+1)+"_option_1'>" +
				"A.<p class='ue' style='display: inline;'>"+lts[j].choice1+"</p>" +
				"</label>" +
				"</li>" +
				"<li class='option'>" +
				"<input type='radio' value='"+lts[j].choice2+"' class='radioOrCheck' name='answer"+(j+1)+"' id='0_answer_"+(j+1)+"_option_2'/>" +
				"<label for='0_answer_"+(j+1)+"_option_2'>" +
				"B.<p class='ue' style='display: inline;'>"+lts[j].choice2+"</p>" +
				"</label>" +
				"</li>" +
				"<li class='option'>" +
				"<input type='radio' value='"+lts[j].choice3+"' class='radioOrCheck' name='answer"+(j+1)+"' id='0_answer_"+(j+1)+"_option_3'/>" +
				"<label for='0_answer_"+(j+1)+"_option_3'>" +
				"C.<p class='ue' style='display: inline;'>"+lts[j].choice3+"</p>" +
				"</label>" +
				"</li>"+
				"<li class='option'>" +
				"<input type='radio' value='"+lts[j].choice4+"' class='radioOrCheck' name='answer"+(j+1)+"' id='0_answer_"+(j+1)+"_option_4'/>" +
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
    function submitCheck() {
    	var undo = 0;
        var _list = {};
        for (var i = 0; i < length; i++) {
        	var radioName = "answer"+(i+1);
        	var val=$('input:radio[name='+ radioName +']:checked').val();
        	if (val != null)
            _list["answer[" + i + "]"] = val; //设置对象的key=>value键值对，即类似于a[0]=0的内容塞入对象_list中，对于后台接收来说，就相当于List内容了
        	else {
        		_list["answer[" + i + "]"] = null;
        		undo++;
        	}		
        }
        if(confirm('还有'+undo+'道题没做,确定要提交吗？')) 
        { 
          alert("不行");
          return;
        } 
        alert("继续");
       /* $.ajax({  
            url: '传递的路径',  
            data: _list,  //直接传_list节可以了，相当于  data: { "ids[0]":1,"ids[1]":2 }这种写法
            dataType: "json",  
            type: "POST",  
            success: function (data) {  
                alert('Ok');  
            }  
        });  */
    }
	