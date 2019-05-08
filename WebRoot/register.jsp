<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/register.css" />

</head>

<body>
	<!-- 头部 -->
	<div class="head-background">
		<div class="head_center">
			<div class="main-logo adHeadPicContainer" style="width:143px">
				<img src="img/head-top.png" class="wihteBgPic">
			</div>
			<div class="website-name">
				<b
					style="font-size: 18px;margin-top: -3px;float: left;color:#cccccc;">|</b>
				<b
					style="font-size: 18px;margin-top: -1px;float: left; margin-left:18px;">华为商城</b>
			</div>
		</div>
	</div>

	<div class="wp1 relative">
		<div class="register-content" id="registerForm">
			<div class="reg-tab clearFix" style="visibility: visible;">
				<a class="phone-wrap l sel" id="phonewrap" onclick="change1(0)">
					<i class="phone-icon"></i> <span id="tabPhone" class="tab-phone"
					style="width: 66px;">手机号</span>
				</a> <a class="mail-wrap l" id="emailwrap" onclick="change1(1)"> <i
					class="mail-icon"></i> <span id="tabMail" class="tab-email"
					style="width: 66px;">电子邮箱</span>
				</a>
			</div>

			<div class="login r">
				已有华为帐号 <a
					href="login.jsp"
					class="login-a" title="登录">登录</a> <span class="ar-eg-opposite">&gt;</span>
			</div>


			<div class="reg-detail" id="shouji" style="display: block;">

				<!-- 选择国家开始 -->
				<div class="input-container" id="chooseCountry">
					<div class="l input-left">国家/地区</div>
					<div class="input-content" style="margin-left: 123px;">
						<div class="node-input ddrop-EMU5" id="selectCountryImg">

							<select id="selcted_address1"
								style="height:42px;width: 280px;border: 0px;">
								<option value="" disabled selected style="display: none;">请选择</option>
								<option style="height: 30px;" value="1">湖南省衡阳市珠晖区</option>
								<option style="height: 30px;" value="2">湖南省衡阳市珠晖区</option>
								<option style="height: 30px;" value="3">湖南省衡阳市珠晖区</option>
								<option style="height: 30px;" value="4">湖南省衡阳市珠晖区</option>
								<option style="height: 30px;" value="5">湖南省衡阳市珠晖区</option>
								<option style="height: 30px;" value="6">湖南省衡阳市珠晖区</option>
							</select>&nbsp;&nbsp;
						</div>

						<div id="selectedCountry" style="display: none;">中国</div>
						<!-- 提示正在登陆的帐号 -->
						<div id="regXCountry" class="node-intro" style="display: none;">您正在注册中国的华为帐号。</div>
					</div>
				</div>

				<!--手机号码 -->

				<div class="input-container" id="phoneInputDiv-box">
					<div class="l input-left">
						<input id="countryCode" type="hidden" name="" autocomplete="off"
							value="0086">
						<div id="input_languageCode" class="ddrop-EMU5">
							<input type="hidden" value="0086"> <span
								class="select-text ar-eg">+86(中国)</span> <span class="suffix"
								style="color: rgb(51, 51, 51);"></span>
							<div class="select-ico select-ico-gray"></div>
							<ul class="dpmenu-EMU5 dpmenu-EMUI5-down"
								style="display: none; width: 136px;">
								<div class="flow-top"></div>
								<li class="dropListEMUI5_li" data-value="0086">+86(中国)</li>
							</ul>
						</div>
					</div>
					<div class="r input-right"></div>
					<div class="input-content">
						<label id="phone" class="lb_opacity_Class"
							style="display: block;pointer-events: none; position: absolute; cursor: text; float: left; z-index: 2; padding-left: 0px; padding-top: 10px;"
							for="username"><div
								style="border: none; background: transparent; cursor: text; margin: 2px; color: rgb(204, 204, 204);"
								tabindex="-1" class="text input-number">请输入手机号</div></label> <input
							id="username" class="text input-number" type="text"
							name="formBean.username" maxlength="50" tabindex="1"
							autocomplete="off" validator="validator21532562666686"
							style="z-index: 1;">

					</div>
					<div
						style="display: inline-block;margin-left: 120px;margin-top: 10px;">
						<span id="phonetip" style="display: none;color: rgb(202,20,49);">①手机号码格式不正确</span>
						<span id="phonetip2" style="display: none;color: rgb(202,20,49);">①该手机用户已被注册</span>
					</div>

				</div>


				<div class="input-container" id="randomCodeDiv">
					<div class="l input-left">图形验证码</div>

					<div class="r input-right">
						<img src="ImgServlet.do" id="img" onclick="changeimage()"
							title="看不清，换一张" style="height:40px;width:100px">

					</div>
					<div class="input-content">
						<label id="pic_testfiy" class="lb_opacity_Class"
							style="display: block;pointer-events: none; position: absolute; cursor: text; float: left; z-index: 2; padding-left: 0px; padding-top: 10px;"
							for="randomCode">
							<div
								style="border: none; background: transparent; cursor: text; margin: 2px; color: rgb(204, 204, 204);"
								tabindex="-1" class="text">请输入图形验证码</div>
						</label><input id="randomCode" maxlength="4" tabindex="2" class="text"
							type="text" name="formBean.randomCode" autocomplete="off"
							validator="validator11532562666642" style="z-index: 1;">
					</div>

				</div>
				<div
					style="display: inline-block;margin-left: 120px;margin-top: 10px;">
					<span id="picmessagetip"
						style="display:none;color: rgb(202,20,49);">①图形验证码输入有误</span>
				</div>

				<div class="input-container" id="errRandomCode-box">
					<div class="l input-left">短信验证码</div>
					<div class="r input-right">
							<button class="get-code dbtn2" autocomplete="off" id="getValiCode" intervaltime="60"  style="display: block;">获取验证码</button> <span
							id="msg_getPhoneRandomCode"
							style="position: relative; top: 34px;"></span>
					</div>
					<div class="input-content">
						<label id="message" class="lb_opacity_Class"
							style="display: block;pointer-events: none; position: absolute; cursor: text; float: left; z-index: 2; padding-left: 0px; padding-top: 10px;"
							for="authCode">
							<div
								style="border: none; background: transparent; cursor: text; margin: 2px; color: rgb(204, 204, 204);"
								tabindex="-1" class="verify vam ime-disabled text">请输入短信验证码</div>
						</label> <input id="messageinput" type="text" autocomplete="off"
							class="verify vam ime-disabled text" id="authCode" tabindex="3"
							style="vertical-align: middle; z-index: 1;"
							name="formBean.authCode" maxlength="8"
							validator="validator51532562666688">


					</div>
					<div
						style="display: inline-block;margin-left: 120px;margin-top: 10px;">
						<span id="phonemessagetip"
							style="display: none;color: rgb(202,20,49);">①手机验证码输入有误</span>
					</div>
				</div>



				<!-- 设置密码 -->
				<div class="set-password">
					<div class="input-container" id="pwdDiv">
						<div class="l input-left">密码</div>
						<div class="input-content">
							<label id="password" class="lb_opacity_Class"
								style="display: block;pointer-events: none; position: absolute; cursor: text; float: left; z-index: 2; padding-left: 0px; padding-top: 10px;"
								for="password">
								<div
									style="border: none; background: transparent; cursor: text; margin: 2px; color: rgb(204, 204, 204);"
									tabindex="-1" class="pwd-input text">请输入密码</div>
							</label> <input id="passwordinput" oncut="return false;"
								oncopy="return false" type="password" autocomplete="off"
								class="pwd-input text" id="password" name="formBean.password"
								maxlength="32" tabindex="4" validator="validator31532562666687"
								style="z-index: 1;">
						</div>
					</div>
					<div id="msg_password"></div>
					<div id="pwd_check_dialog"></div>

					<div class="input-container " id="confirmpwdDiv">
						<div class="l input-left">确认密码</div>
						<div class="input-content">
							<label id="ensurepsw" class="lb_opacity_Class"
								style="display: block;pointer-events: none; position: absolute; cursor: text; float: left; z-index: 2; padding-left: 0px; padding-top: 10px;"
								for="confirmPwd"><div
									style="border: none; background: transparent; cursor: text; margin: 2px; color: rgb(204, 204, 204);"
									tabindex="-1" class="text vam">请再次输入密码</div></label> <input
								id="ensurepswinput" oncut="return false;" oncopy="return false"
								id="confirmPwd" type="password" autocomplete="off"
								class="text vam" name="checkPassword" maxlength="32"
								tabindex="5" validator="validator41532562666688"
								style="z-index: 1;">
						</div>
					</div>
					<div id="msg_checkPassword"></div>
					<div id="birthDateBox"></div>

					<!-- 协议 -->
					<!-- 按钮 -->
					<div class="reg-btn" align="center">
						<input type="button" class="btn btn-reg sel"
							style="background-color: #B40707;border:0;color: #fff"
							id="btnSubmit" value="注册" tabindex="7">
						<div id="register_msg" style="position: relative; left: 26%;"></div>
					</div>
				</div>
			</div>

			<div class="reg-detail2" id="youjian" style="display: none;">
				<div class="input-container" id="chooseCountry">
					<div class="l input-left">国家/地区</div>
					<div class="input-content" style="margin-left: 123px;">
						<div class="node-input ddrop-EMU5" id="selectCountryImg">
							<select id="selcted_address2"
								style="height:42px;width: 280px;border: 0px;">
								<option value="" disabled selected style="display: none;">请选择</option>
								<option style="height: 30px;" value="1">湖南省衡阳市珠晖区</option>
								<option style="height: 30px;" value="2">湖南省岳阳市岳阳楼区</option>
								<option style="height: 30px;" value="3">湖南省株洲市天元区</option>
								<option style="height: 30px;" value="4">湖南省娄底市娄星区</option>
							</select>&nbsp;&nbsp;
						</div>
						<div id="selectedCountry" style="display: none;">中国</div>

						<!-- 提示正在登陆的帐号 -->
						<div id="regXCountry" class="node-intro" style="display: none;">您正在注册中国的华为帐号。</div>
					</div>
				</div>



				<!-- 邮件地址 -->
				<div class="input-container" id="errormsgemail-box">
					<div class="l input-left">邮件地址</div>
					<div class="r input-right"></div>
					<div class="input-content">
						<label class="lb_opacity_Class"
							style="display: block; position: absolute; cursor: text; float: left; z-index: 2; padding-left: 0px; padding-top: 10px;">
						</label> <input type="text" class="text" name="formBean.email" id="email"
							maxlength="50" autocomplete="off"
							validator="validator11532607791126" style="z-index: 1;"
							placeholder="请输入邮件地址">
					</div>
					<div
						style="display: inline-block;margin-left: 120px;margin-top: 10px;">
						<span id="emailtip1" style="display: none;color: rgb(202,20,49);">①邮箱格式不正确</span>
						<span id="emailtip2" style="display: none;color: rgb(202,20,49);">①该邮箱用户已被注册</span>
					</div>
				</div>


				<!-- 输入图片码 -->
				<div class="input-container" id="randomCodeDiv">
					<div class="l input-left">图形验证码</div>
					<div class="r input-right">
						<img src="ImgServlet.do" id="img2" onclick="changeimage2()"
							title="看不清，换一张" style="height:40px;width:100px">
					</div>
					<div class="input-content">
						<label class="lb_opacity_Class"
							style="display: block; position: absolute; cursor: text; float: left; z-index: 2; padding-left: 0px; padding-top: 10px;"
							for="randomCode"> </label> <input id="randomCode1" maxlength="4"
							tabindex="2" class="text" type="text" name="formBean.randomCode"
							autocomplete="off" style="z-index: 1;" placeholder="请输入图形验证码">
					</div>

				</div>
				<div
					style="display: inline-block;margin-left: 120px;margin-top: 10px;">
					<span id="picmessagetip2"
						style="display: none;color: rgb(202,20,49);">①图形验证码输入有误</span>
				</div>

				<!-- 输入邮件验证码 -->
				<div class="short input-msgcode">
					<div class="input-container" id="errRandomCode-box">
						<div class="l input-left">邮件验证码</div>
						<div class="r input-right">
							<button class="get-code dbtn2" id="getValiCode2"
								intervaltime="60" >获取验证码 </button><span
								id="msg_getPhoneRandomCode" style="position:relative;top:34px;"></span>
						</div>
						<div class="input-content">
							<label class="lb_opacity_Class"
								style="display: block; position: absolute; cursor: text; float: left; z-index: 2; padding-left: 0px; padding-top: 10px;"
								for="authCode"> </label> <input type="text" autocomplete="off"
								class="verify vam ime-disabled text" id="authCode2"
								style="vertical-align: middle; z-index: 1;"
								name="formBean.authCode" maxlength="8" tabindex="3"
								placeholder="请输入邮件验证码"> <b id="emailAuthCodeRight"
								class="authCodeRightPosFix" datavalue="false"></b>
						</div>
						<div
							style="display: inline-block;margin-left: 120px;margin-top: 10px;">
							<span id="emailmessagetip"
								style="display: none;color: rgb(202,20,49);">①邮箱验证码输入有误</span>
						</div>
					</div>


					<!-- 设置密码 -->
					<div class="set-password">
						<div class="input-container" id="pwdDiv">
							<div class="l input-left">密码</div>
							<div class="input-content">
								<label id="password2" class="lb_opacity_Class"
									style="display: block;pointer-events: none; position: absolute; cursor: text; float: left; z-index: 2; padding-left: 0px; padding-top: 10px;">
								</label> <input id="passwordinput2" oncut="return false;"
									oncopy="return false" type="password" autocomplete="off"
									class="pwd-input text" name="formBean.password" maxlength="32"
									tabindex="4" placeholder="请输入密码"
									validator="validator31532562666687" style="z-index: 1;">

							</div>


						</div>

						<div
							style="display: inline-block;margin-left: 120px;margin-top: 10px;">
							<span id="passwordtip"
								style="display: none;color: rgb(202,20,49);">①密码至少8位</span>
						</div>
						<div class="input-container " id="confirmpwdDiv">
							<div class="l input-left">确认密码</div>
							<div class="input-content">
								<label class="lb_opacity_Class"
									style="display: block; position: absolute; cursor: text; float: left; z-index: 2; padding-left: 0px; padding-top: 10px;"
									for="confirmPwd"> </label> <input oncut="return false;"
									oncopy="return false" id="confirmPwd2" type="password"
									autocomplete="off" class="text vam" name="checkPassword"
									maxlength="32" tabindex="5" style="z-index: 1;"
									validator="validator31532609555836" placeholder="请再次输入密码">
							</div>
							<div
								style="display: inline-block;margin-left: 120px;margin-top: 10px;">
								<span id="ensurepasswordtip"
									style="display: none;color: rgb(202,20,49);">①两次密码不一致</span>
							</div>
						</div>


					</div>

					<!-- 根据选择的国家，决定是否展示注册的手机号 -->
					<div id="bindSecPhoneBox">
						<div class="input-container" id="bindSecPhone-box">
							<div class="l input-left">
								<input id="countryCode" type="hidden" name="" autocomplete="off"
									value="0086">
								<div id="input_languageCode" class="ddrop-EMU5">
									<span id="secPhoneCodeShow" class="secPhoneCodeShowCss">+86(中国)</span>
								</div>
							</div>

							<div class="r input-right"></div>
							<div class="input-content">
								<label class="lb_opacity_Class"
									style="display: block; position: absolute; cursor: text; float: left; z-index: 2; padding-left: 0px; padding-top: 10px;"
									for="secPhoneAcct"> </label> <input id="phone2" class="text"
									type="text" name="formBean.secphone" maxlength="50"
									tabindex="6" autocomplete="off" style="z-index: 1;"
									placeholder="请输入手机号">
							</div>

						</div>
						<div
							style="display: inline-block;margin-left: 120px;margin-top: 10px;">
							<span id="phonetip3" style="display: none;color: rgb(202,20,49);">①手机号码格式不正确</span>
							<span id="phonetip4" style="display: none;color: rgb(202,20,49);">①该手机用户已被注册</span>
						</div>

					</div>


					<!-- 安全手机号的短信验证码 -->
					<div id="secPhoneRandomCodeParent">
						<div class="input-container" id="secPhoneRandomCode-box">
							<div class="l input-left">短信验证码</div>
							<div class="r input-right">
								<button class="get-code dbtn2" autocomplete="off"
									id="getSecValiCode" intervaltime="60" >获取验证码</button> <span
									id="msg_getPhoneRandomCode"
									style="position: relative; top: 34px;"></span>
							</div>
							<div class="input-content">
								<label class="lb_opacity_Class"
									style="display: block; position: absolute; cursor: text; float: left; z-index: 2; padding-left: 0px; padding-top: 10px;"
									for="secAuthCode"> </label> <input type="text"
									autocomplete="off" class="verify vam ime-disabled text"
									id="secAuthCode" tabindex="7"
									style="vertical-align: middle; z-index: 1;"
									name="formBean.secphoneauthCode" placeholder="请输入短信验证码"
									maxlength="8"> <b id="secPhoneAuthCodeRight"
									class="authCodeRightPosFix" datavalue="false"></b>
							</div>
							<div
								style="display: inline-block;margin-left: 120px;margin-top: 10px;">
								<span id="emailtip" style="display: none;color: rgb(202,20,49);">①邮箱格式不正确</span>
								<span id="emailtip2"
									style="display: none;color: rgb(202,20,49);">①该邮箱用户已被注册</span>
							</div>
						</div>

					</div>


					<!-- 按钮 -->
					<div class="reg-btn" align="center">
						<input type="button" id="register2" class="btn btn-reg sel"
							style="background-color: #B40707;border: none;color: #fff;"
							value="注册" tabindex="7">
						<div id="register_msg" style="position:relative;left:26%;"></div>
						<div id="register_msg2" class="vam error hide"
							style="margin-left: -60px;"></div>
					</div>
				</div>
			</div>


			<div class="box-shadow"></div>

			<div class="wp1 ft">
				<div class="reg-content">
					<p class="footer">
						<a id="foot_EULA"
							href="https://hwid1.vmall.com/CAS/portal/agreements/userAgreement/zh-cn_userAgreement.html?version=china"
							class="rule" target="_blank">华为帐号用户协议</a> <em class="foot_em">|</em>
						<a id="foot_privacy"
							href="https://hwid1.vmall.com/CAS/portal/agreements/accPrivacyStatement/zh-cn_accPrivacyStatement.html?version=china"
							class="rule" target="_blank">关于华为帐号与隐私的声明</a> <span id="faqPart"
							class="foot_em"> <em style="font-style: normal">|</em> <a
							style="padding:0 10px;" target="blank"
							href="https://hwid1.vmall.com/CAS/portal/faq/faq.html">常见问题</a>
						</span>
					</p>
					<p id="copyrightPart" class="footer">Copyright&nbsp;©&nbsp;2011-2018&nbsp;&nbsp;华为软件技术有限公司&nbsp;&nbsp;版权所有&nbsp;&nbsp;保留一切权利&nbsp;&nbsp;苏B2-20070200号&nbsp;|&nbsp;苏ICP备09062682号-9</p>

				</div>
			</div>
		</div>
	</div>


</body>




<script>
	var username = document.getElementById("username");
	var getValiCode = document.getElementById("getValiCode");
	var phonecode1 = "";
	
	//验证码倒计时
	function time(){
	     var wait=60;
	    getValiCode.setAttribute("disabled",true);
	     var timer=setInterval(function(){
	         if(wait==1){
	             getValiCode.innerText="再次发送";
	             getValiCode.removeAttribute("disabled");
	             wait=60;
	             clearInterval(timer);
	         }else{
	             wait--;
	             getValiCode.innerText=wait+"s后重新获取";
	         }
	     },1000)
	 }
	getValiCode.onclick = function() {
		var phonevalue = username.value;
		var request = new XMLHttpRequest();
		request.open("get", "SendSms.do?phone=" + phonevalue);
		request.send(null);
		request.onreadystatechange = function() {
			if (request.readyState == 4 && request.status == 200) {
				var ret = request.responseText;
				var json = eval(ret);
				alert(json[0].phonecode);
				phonecode1 = json[0].phonecode;
				alert(phonecode1);
				 time();
			}
		}
		
	}
	
	
	  
</script>


<script type="text/javascript">



	var phone = document.getElementById("phone");
	var username = document.getElementById("username");
	username.onfocus = function() {
		phone.style.display = "none";
	}
	username.onblur = function() {
		var usernamevalue = username.value;
		if (usernamevalue == "") {
			phone.style.display = "block";
		}
	}

	//验证用户是否已经存在
	var userphone = 0;
	var username = document.getElementById("username");
	var phonetip = document.getElementById("phonetip");
	var phonetip2 = document.getElementById("phonetip2");
	var reg = /^0?1[3|4|5|7|8][0-9]\d{8}$/;

	username.onblur = function() {
		var value1 = username.value;
		var request = new XMLHttpRequest();
		request.onreadystatechange = function() {
			if (request.readyState == 4 && request.status == 200) {
				var ret = request.responseText;

				userphone = ret;
				if (userphone > 0) {
					phonetip2.style.display = "inline-block";
				} else {
					phonetip2.style.display = "none";
				}

			}

		}
		request.open("get", "UserServlet.do?method4=findUserPhone&userphone="
				+ value1, false);
		request.send(null);

		if (!reg.test(value1)) {
			phonetip.style.display = "inline-block";
			return false
		} else {
			phonetip.style.display = "none";
			return true;
		}

	}

	var pic_testfiy = document.getElementById("pic_testfiy");
	var randomCode = document.getElementById("randomCode");
	randomCode.onfocus = function() {
		pic_testfiy.style.display = "none";
	}
	randomCode.onblur = function() {
		var usernamevalue = randomCode.value;
		if (usernamevalue == "") {
			pic_testfiy.style.display = "block";
		}
	}

	var message = document.getElementById("message");
	var messageinput = document.getElementById("messageinput");
	messageinput.onfocus = function() {
		message.style.display = "none";
	}

	messageinput.onblur = function() {
		var usernamevalue = messageinput.value;
		if (usernamevalue == "") {
			message.style.display = "block";
		}
	}

	var password = document.getElementById("password");
	var passwordinput = document.getElementById("passwordinput");

	passwordinput.onfocus = function() {
		password.style.display = "none";
	}
	passwordinput.onblur = function() {
		var passwordvalue = passwordinput.value;
		if (passwordvalue == "") {
			password.style.display = "block";
		}
	}

	var ensurepsw = document.getElementById("ensurepsw");
	var ensurepswinput = document.getElementById("ensurepswinput");

	ensurepswinput.onfocus = function() {
		ensurepsw.style.display = "none";
	}
	ensurepswinput.onblur = function() {
		var passwordvalue = ensurepswinput.value;
		if (passwordvalue == "") {
			ensurepsw.style.display = "block";
		}
	}

	//邮箱验证格式与是否存在
	var email = document.getElementById("email");
	var emailtip1 = document.getElementById("emailtip1");
	var emailtip2 = document.getElementById("emailtip2");
	var emailreg = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
	var useremail = 0;
	email.onblur = function() {
		var emvalue = email.value;
		var request = new XMLHttpRequest();
		request.onreadystatechange = function() {
			if (request.readyState == 4 && request.status == 200) {
				var ret = request.responseText;
				useremail = ret;
			}

		}

		request.open("get", "UserServlet.do?method5=findUserEmail&useremail="
				+ emvalue, false);
		request.send(null);
		if (useremail > 0) {
			emailtip2.style.display = "inline-block";
		} else {
			emailtip2.style.display = "none";
		}

		if (!emailreg.test(emvalue)) {
			emailtip1.style.display = "block";

		} else {
			emailtip1.style.display = "none";
		}

	}

	//密码验证
	var passwordinput2 = document.getElementById("passwordinput2");
	var confirmPwd2 = document.getElementById("confirmPwd2");
	var passwordtip = document.getElementById("passwordtip");
	var ensurepasswordtip = document.getElementById("ensurepasswordtip");
      
	passwordinput2.onblur = function() {
		var psvalue = passwordinput2.value;

		if (psvalue.length < 8) {
			passwordtip.style.display = "block";

		} else {
			passwordtip.style.display = "none";
		}
	}

	confirmPwd2.onblur = function() {
		var psvalue = passwordinput2.value;
		var rpsvalue = confirmPwd2.value;
		if (psvalue != rpsvalue) {
			ensurepasswordtip.style.display = "inline-block";

		} else {
			ensurepasswordtip.style.display = "none";
		}
	}

	//手机格式验证以及用户名是否存在
	var userphone3 = 0;
	var phone2 = document.getElementById("phone2");
	var reg = /^0?1[3|4|5|7|8][0-9]\d{8}$/;
	phone2.onblur = function() {
		var value1 = phone2.value;
		var request = new XMLHttpRequest();
		request.onreadystatechange = function() {
			if (request.readyState == 4 && request.status == 200) {
				var ret = request.responseText;
				userphone3 = ret;

				if (userphone3 > 0) {
					phonetip4.style.display = "inline-block";
				} else {
					phonetip4.style.display = "none";
				}

			}

		}

		request.open("get", "UserServlet.do?method4=findUserPhone&userphone="
				+ value1, false);
		request.send(null);

		if (!reg.test(value1)) {
			phonetip3.style.display = "inline-block";
			return false
		} else {
			phonetip3.style.display = "none";
			return true;
		}

	}

	//获取邮箱验证码
	var emailcode = "";
	var getValiCode2 = document.getElementById("getValiCode2");
	//验证码倒计时
	function time1(){
	     var wait=60;
	    getValiCode2.setAttribute("disabled",true);
	     var timer=setInterval(function(){
	         if(wait==1){
	             getValiCode2.innerText="再次发送";
	             getValiCode2.removeAttribute("disabled");
	             wait=60;
	             clearInterval(timer);
	         }else{
	             wait--;
	             getValiCode2.innerText=wait+"s后重新获取";
	         }
	     },1000)
	 }
	getValiCode2.onclick = function() {
		var emvalue = email.value;
		var request = new XMLHttpRequest();
		request.open("get", "SendEmail.do?email=" + emvalue);
		request.send(null);
		request.onreadystatechange = function() {
			if (request.readyState == 4 && request.status == 200) {
				var ret = request.responseText;
				var json = eval(ret);
				alert(json[0].emailcode);
				emailcode = json[0].emailcode;
				alert(emailcode);
				 time1();
			}
		}
	}

	var phonecode = "";
	var getSecValiCode = document.getElementById("getSecValiCode");
	var phone2 = document.getElementById("phone2");
	//验证码倒计时
	function time3(){
	     var wait=60;
	     getSecValiCode.setAttribute("disabled",true);
	     var timer=setInterval(function(){
	         if(wait==1){
	        	 getSecValiCode.innerText="再次发送";
	        	 getSecValiCode.removeAttribute("disabled");
	             wait=60;
	             clearInterval(timer);
	         }else{
	             wait--;
	             getSecValiCode.innerText=wait+"s后重新获取";
	         }
	     },1000)
	 }
	getSecValiCode.onclick = function() {

		var phone2value = phone2.value;
		var request = new XMLHttpRequest();
		request.open("get", "SendSms.do?phone=" + phone2value);
		request.send(null);
		request.onreadystatechange = function() {
			if (request.readyState == 4 && request.status == 200) {
				var ret = request.responseText;
				var json = eval(ret);
				alert(json[0].phonecode);
				phonecode = json[0].phonecode;
				alert(phonecode);
				 time3();
			}
		}
	}

	function change1(a) {
		var sj = document.getElementById("shouji");
		var yj = document.getElementById("youjian");
		var phonewrap = document.getElementById("phonewrap");
		var emailwrap = document.getElementById("emailwrap");
		if (a == 1) {
			sj.style.display = 'none';
			yj.style.display = 'block';
			emailwrap.style.background = "#B40707";
			phonewrap.style.background = "#CCCCCC";
		} else {

			yj.style.display = 'none';
			sj.style.display = 'block';
			phonewrap.style.background = "#B40707";
			emailwrap.style.background = "#CCCCCC";
		}
	}
	//得到验证码
	var imagecode = "";
	onload = function() {
		var request1 = new XMLHttpRequest();
		request1.onreadystatechange = function() {
			if (request1.readyState == 4 && request1.status == 200) {
				var ret = request1.responseText;
				imagecode = ret;

			}
		}
		request1.open("get", "UserServlet.do?method3=dateimage", false);
		request1.send(null);

	}

	//注册验证
	var btnSubmit = document.getElementById("btnSubmit");

	var selcted_address1 = document.getElementById("selcted_address1");

	//var username = document.getElementById("username");
	var passwordinput = document.getElementById("passwordinput");
	var ensurepswinput = document.getElementById("ensurepswinput");
	var messageinput = document.getElementById("messageinput");
	var randomCode = document.getElementById("randomCode");
	var picmessagetip = document.getElementById("picmessagetip");
	btnSubmit.onclick = function() {
		var index = selcted_address1.selectedIndex;
		var value1 = username.value;
		var selcted_address1value = selcted_address1.options[index].text;
		alert(selcted_address1value);
		var usernamevalue = username.value;
		var passwordinputvalue = passwordinput.value;
		var ensurepswvalue = ensurepswinput.value;
		var messagevalue = messageinput.value;
		var randomCodevalue = randomCode.value;
		var request = new XMLHttpRequest();

		request.onreadystatechange = function() {
			if (request.readyState == 4 && request.status == 200) {

				var ret = request.responseText;
				imagecode = ret;

			}

		}
		request.open("get", "UserServlet.do?method3=dateimage", false);
		request.send(null);

		

		if (passwordinputvalue == ensurepswvalue && reg.test(value1)
				&& phonecode1 == messagevalue && imagecode == randomCodevalue
				&& userphone == 0) {
			location = "UserServlet.do?method=register&country="
					+ selcted_address1value + "&phone=" + usernamevalue
					+ "&password=" + passwordinputvalue;

		} else {

			alert("注册信息填写错误,请重新填写");
			if (imagecode != randomCodevalue) {
				picmessagetip.style.display = "block";
			} else {
				picmessagetip.style.display = "none";
			}
		}

	}

	//注册验证2
	var selcted_address2 = document.getElementById("selcted_address2");
	var register2 = document.getElementById("register2");
	var authCode2 = document.getElementById("authCode2");
	var getSecValiCode = document.getElementById("getSecValiCode");
	var secAuthCode = document.getElementById("secAuthCode");
	var randomCode1 = document.getElementById("randomCode1");
	var picmessagetip2 = document.getElementById("picmessagetip2");
	register2.onclick = function() {
		var emvalue = email.value;
		var psvalue = passwordinput2.value;
		var rpsvalue = confirmPwd2.value;
		var pvaule = phone2.value;
		var authCode2value = authCode2.value;
		var index = selcted_address1.selectedIndex;
		var selcted_address2value = selcted_address2.options[index].text;
		var secAuthCodevalue = secAuthCode.value;
		var imagevalue = randomCode1.value;

		var request = new XMLHttpRequest();

		request.onreadystatechange = function() {
			if (request.readyState == 4 && request.status == 200) {

				var ret = request.responseText;
				imagecode = ret;

			}

		}
		request.open("get", "UserServlet.do?method3=dateimage", false);
		request.send(null);
		

		if (emailreg.test(emvalue) && useremail == 0 && psvalue.length >= 8
				&& psvalue == rpsvalue && reg.test(pvaule)
				&& authCode2value == emailcode && phonecode == secAuthCodevalue
				&& imagecode == imagevalue && userphone3 == 0) {
			location = "UserServlet.do?method2=register2&country="
					+ selcted_address2value + "&phone=" + pvaule + "&password="
					+ psvalue + "&email=" + emvalue;

		} else {
			if (imagecode != imagevalue) {
				picmessagetip2.style.display = "block";
			} else {
				picmessagetip2.style.display = "none";
			}

			alert("信息填写错误");

		}
	}

	//更换验证码

	function changeimage() {
		document.getElementById("img").src = "ImgServlet.do?x=" + Math.random();

	}
	function changeimage2() {
		document.getElementById("img2").src = "ImgServlet.do?x="
				+ Math.random();

	}

	//验证手机验证码是否正确
	var phonemessagetip = document.getElementById("phonemessagetip");
	var messageinput = document.getElementById("messageinput");
	messageinput.onblur = function() {
		var messagevalue = messageinput.value;
		if (phonecode1 != messagevalue) {
			phonemessagetip.style.display = "block";
		}

	}

	/*	var picmessagetip2 = document.getElementById("picmessagetip2");
	
	 randomCode1.onblur=function(){
	 var messagevalue = randomCode1.value;
	 alert(messagevalue);
	 alert(imagecode);
	 if(imagecode!=messagevalue){
	 picmessagetip2.style.display="block";
	 }else{
	 picmessagetip2.style.display="none";
	 }
	
	 }
	 */
	var emailmessagetip = document.getElementById("emailmessagetip");
	var authCode2 = document.getElementById("authCode2");
	authCode2.onblur = function() {
		var messagevalue = authCode2.value;
		if (emailcode != messagevalue) {
			emailmessagetip.style.display = "block";
		} else {
			emailmessagetip.style.display = "none";
		}

	}
</script>


</html>



