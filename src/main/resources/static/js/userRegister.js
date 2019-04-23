var countdown=60;
var checkNum;
function sendemail(){
	var myreg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
	if (!$("#email").val()) {
		alert("邮箱不能为空！")
		return
	}
	if (!myreg.test($("#email").val())) {
		alert("邮箱格式不正确！")
		return
	}
    var obj = $("#btn");
    settime(obj);
    var email = $("#email").val();
    $.ajax({
        type : "post",
        url : "/send",
        data: {"email":email},
        dataType : "JSON",
        async : false,
        success : function(data) {
          checkNum = data;
            }              
    });
    }
function settime(obj) { //发送验证码倒计时
    if (countdown == 0) { 
        obj.attr('disabled',false); 
        //obj.removeattr("disabled"); 
        obj.val("发送验证码");
        countdown = 60; 
        return;
    } else { 
        obj.attr('disabled',true);
        obj.val("重新发送(" + countdown + ")");
        countdown--; 
    } 
setTimeout(function() { 
    settime(obj) }
    ,1000) 
}
function registerCheck() {
	var flag = true;
	if (!$("#userName").val()) {
		alert("用户名不能为空！")
		flag = false
	}
	if (!$("#password").val()) {
		alert("密码不能为空！")
		flag = false
	}
	if ($("#checkNumber").val() != checkNum) {
		alert("验证码错误！")
		flag = false
	}
	if (flag) {
		$("#regForm").submit()
	}
}