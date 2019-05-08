<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<form method="post" action="SendSms.do">

    验证码：<input type="text" name="phone">
      <input type="submit"  value="获取验证码">

</form>


<form method="post" action="SendEmail.do">
发送邮箱：<input type="text" name="email">
      <input type="submit"  value="获取邮箱验证码" id="button1">    
</form>   
<script type="text/javascript">
    var button1 = document.getElementById("button1");
    button1.onclick=function(){
    	var value1= "${sessionScope.emailcode}"
    	alert(value1);
    }
</script>

																																																																																																																																																																																																																																																																																																																						