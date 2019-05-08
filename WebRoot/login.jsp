<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/login.css" />

</head>

<body>
	<div>
		<!-- 头部  -->
		<div class="customer-header">
			<div class="header-center">
				<div class="main-logo adHeadPicContainer">
					<img src="img/huaweiLogo.png" class="adHeadPic">
				</div>
				<div class="website-name">
					<b
						style="font-size: 18px;margin-top: -2px;float: left;color:#cccccc;">|</b>
					<b class="adHeadTitle">华为商城</b>
				</div>
			</div>
		</div>

		<!-- 登录  -->
		<div class="login_bg" id="loginform">
			<div class="g login_adBg">
				<div class="login-area login-right login-area-box">
					<div class="userAccountLogin">

						<div class="h">
							<span class="loginTitle loginTitle-left actived"
								data-type="account" onclick="show(0)">帐号登录</span> <span
								class="loginTitle splitLine loginTitle-right" data-type="qrCode"
								onclick="show(1)">扫码登录</span>
						</div>

						<div class="b-account" style="display: block;" id="zhanghao">
							<div class="login-form-marginTop">
								<div class="form-edit-area loginEvenrForm">
									<div class="userAccountLogin-errorTipsDiv" id="errors"></div>
									<table border="0" cellpadding="O" cellspacing="0">
										<tbody>
											<tr>
												<td class="user-input-tr"><label id="username"
													class="lb_opacity_Class"
													style="display: block;pointer-events: none; position: absolute; cursor: text; float: left; z-index: 2; padding-left: 0px; padding-top: 0px;"
													for="login_userName">
														<div
															style="border: none; background: transparent; cursor: text; margin: 2px; color: rgb(204, 204, 204);"
															tabindex="-1" class="text vam">手机号/邮件地址</div>
												</label> <input id="usernameinput" type="text" autocomplete="off"
													class="text vam" id="login_userName" name="userAccount"
													maxlength="50" tabindex="1"
													validator="validator21531988939384" style="z-index: 1;">
													<!-- tabindex 属性规定元素的 tab 键控制次序（当 tab 键用于导航时）  --></td>
											</tr>

											<tr>
												<td class="user-input-tr"><label id="password"
													class="lb_opacity_Class"
													style="display: block;pointer-events: none; position: absolute; cursor: text; float: left; z-index: 2; padding-left: 0px; padding-top: 0px;"
													for="login_password">
														<div
															style="border: none; background: transparent; cursor: text; margin: 2px; color: rgb(204, 204, 204);"
															tabindex="-1" class="text vam">密码</div>
												</label> <input id="passwordinput" oncut="return false;"
													oncopy="return false" id="login_password" type="password"
													autocomplete="off" class="text vam" name="password"
													maxlength="32" tabindex="2"
													validator="validator31531988939388" style="z-index: 1;">
												</td>
											</tr>

											<tr>
												<td id="picAuthCode" class="verify-td referenceTarget">

												</td>
											</tr>

											<tr>
												<td class="mt-checkbox"><span id="rememberNameSpan">
														<input type="checkbox" class="checkbox vam"
														id="remember_name" name="remember_name" tabindex="4">
														<label for="remember_name"> <i
															id="remember_name_icon"
															class="checkBox-icon marginR6 tick-off-icon"></i>记住华为帐号
													</label>
												</span>
													<div class="hidden remeberTip" style="display: none;"></div>
												</td>
											</tr>

											<tr>
												<td>
													<div style="margin-bottom:0px;">
														<span class="vam error" id="login_msg"
															style="display:block"></span>
													</div> <input type="button" class="button-login" id="btnLogin"
													data-type="accountLogin" value="登录" tabindex="5">
													<img class="load" src="img/loading3.gif">
												</td>
											</tr>

											<tr>
												<td class="mt-links lineHeightFix" id="operLinkTd"><span
													id="smsLoginEntrance" class="changeLoginType l"
													data-type="userAccountLogin" title="短信验证码登录"><i
														class="phoneIcon marginR6"></i>短信验证码登录</span> <span
													class="mt-links-float r clearWidth floatFix referenceTarget">
														<a class="btn-primary vam clearWidth" title="更多"
														id="btn-more">更多</a>
														<div class="set-more">
															<div id="more_list" class="more-list hiden"
																style="display: none;">
																<ul>
																	<li id="goSecurity" class="security-menu">安全中心</li>
																</ul>
															</div>
														</div>
												</span></td>
											</tr>

											<tr>
												<td class="mt-links p0">
													<div class="mt-links-float vam clearWidth">
														<span class="regist"> <a
															class="btn-primary clearWidth"
															href="register.jsp"
															title="注册帐号">注册帐号</a>
														</span> <span class="forgot"> <a
															class="btn-primary clearWidth" href=""
															onclick="gotoresetpwd()" title="忘记密码？">忘记密码？</a>
														</span>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>

							<div class="thirdLoginBlock">

								<div class="thirdLintTitle">
									<i class="line-left"></i> <span class="third-tips">其他方式登录</span>
									<i class="line-right rotateImg"></i>
								</div>

								<div class="thirdLoginDiv">
									<span class="qqLogin_bigIco" title="QQ"
										onclick="thirdAccountBind(this)"> <a
										href="javascript:void(0);" tourl="/qq/authorize"><s></s></a>
									</span> <span class="alipayLogin_bigIco" title="支付宝"
										onclick="thirdAccountBind(this)"> <a
										href="javascript:void(0);" tourl="/alipay/authorize"><s></s></a>
									</span> <span class="weixinLogin_bigIco" title="微信"
										onclick="thirdAccountBind(this)"> <a
										href="javascript:void(0);" tourl="/weixin/authorize"><s></s></a>
									</span>
								</div>
							</div>
						</div>

						<div class="b-qrCode hiden" id="saoma">
							<div class="qrCode-main">
								<div class="qrCode-content">
									<div id="qrcodeImg" style="left: 109px;">
										<img class="qrcode "
											src="https://hwid1.vmall.com/DimensionalCode/getqrWeb?appID=com.huawei.hwidweb&amp;loginChannel=7000700&amp;reqClientType=700&amp;confirmFlag=1&amp;version=13000&amp;_t=1532570533438">
										<div class="qrcode-over-time" style="display: none;">
											<img
												src="https://hwid1.vmall.com/CAS/up/rss_20/css/portal/vmall_rss/loginEMUIV6/img/qrCode-over-time.png?UP_CAS_2.6.2.202">
											<div class="refush-content hiden" style="display: none;">
												<div class="des">二维码失效</div>
												<div class="refush">刷新</div>
											</div>
											<div class="scan-success-content hiden"
												style="display: none;">
												<div class="scan-success-img"></div>
												<div class="scan-success">扫码成功</div>
											</div>
										</div>

									</div>
									<div class="qrCode-help" style="opacity: 0;"></div>
								</div>
							</div>

							<div class="qrCode-desc">
								<p>
									使用<span class="haweiapp">华为移动服务APP</span>扫一扫
								</p>
								<p>若您使用华为手机，请进入“设置”&gt;“华为帐号”扫码登录。</p>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>

		<!-- 底部  -->
		<div class="customer-footer">
			<div class="ft">
				<!--授权  -->
				<div class="warrant-area">
					<p style="text-align: center;line-height:20px;height:20px;">
						<a
							href="https://hwid1.vmall.com/CAS/portal/agreements/userAgreement/zh-cn_userAgreement.html?version=china"
							class="rule" target="_blank">华为帐号用户协议</a> <em class="foot_em">|</em>
						<a
							href="https://hwid1.vmall.com/CAS/portal/agreements/accPrivacyStatement/zh-cn_accPrivacyStatement.html?version=china"
							class="rule" target="_blank">关于华为帐号与隐私的声明</a> <span
							class="foot_em"> <em style="font-style: normal">|</em> <a
							style="padding:0 10px;" target="blank"
							href="https://hwid1.vmall.com/CAS/portal/faq/faq.html">常见问题</a>
						</span>
					</p>
					<p
						style="text-align: center;line-height: 12px;height:12px;margin-top: 10px ">
						Copyright&nbsp;©&nbsp;2011-2018&nbsp;&nbsp;华为软件技术有限公司&nbsp;&nbsp;版权所有&nbsp;&nbsp;保留一切权利&nbsp;&nbsp;苏B2-20070200号&nbsp;|&nbsp;苏ICP备09062682号-9
					</p>
				</div>
			</div>
		</div>

	</div>

</body>
<script type="text/javascript">
	var loginTitles = document.getElementsByClassName("loginTitle");

	function show(a) {
		var x = document.getElementById("zhanghao");
		var y = document.getElementById("saoma");
		if (a == 1) {
			x.style.display = 'none';
			y.style.display = 'block';
			loginTitles[0].className = "loginTitle loginTitle-left ";
			loginTitles[1].className = "loginTitle splitLine loginTitle-right actived";

		} else {
			y.style.display = 'none';
			x.style.display = 'block';
			loginTitles[0].className = "loginTitle loginTitle-left actived";
			loginTitles[1].className = "loginTitle splitLine loginTitle-right";
		}

	}

	var username = document.getElementById("username");
	var usernameinput = document.getElementById("usernameinput");
	var password = document.getElementById("password");
	var passwordinput = document.getElementById("passwordinput");
	usernameinput.onfocus = function() {
		username.style.display = "none";
	}
	usernameinput.onblur = function() {
		var usernamevalue = usernameinput.value;
		if (usernamevalue == "") {
			username.style.display = "block";
		}
	}

	passwordinput.onfocus = function() {
		password.style.display = "none";
	}
	passwordinput.onblur = function() {
		var passwordvalue = passwordinput.value;
		if (passwordvalue == "") {
			password.style.display = "block";
		}
	}
	
	var btnLogin = document.getElementById("btnLogin");
	var usernameinput = document.getElementById("usernameinput");
	var passwordinput = document.getElementById("passwordinput");
	var emailreg = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
	var phonereg = /^0?1[3|4|5|7|8][0-9]\d{8}$/;
	var n1 = 0;
	var usernameinputval = "";
	btnLogin.onclick=function(){
		var n = 0;
		 usernameinputval = usernameinput.value;
		var passwordinputval = passwordinput.value;
		alert(usernameinputval);
		alert(passwordinputval);
		
		if(phonereg.test(usernameinputval)){
		
		var request1 = new XMLHttpRequest();
		request1.open("get", "UserServlet.do?method6=userLogin&username="+usernameinputval+"&password="+passwordinputval);
		request1.send(null);
		request1.onreadystatechange = function() {
			if (request1.readyState == 4 && request1.status == 200) {
				var ret = request1.responseText;
				 n = ret;
                alert(n);
                if(n>0){
           
            		location = "first.jsp";
            		
            		}else{
            		     alert("账号或密码填写错误，登入失败。");
            		}
			}
		}
		
		 }else if(emailreg.test(usernameinputval)){
			
			var request2 = new XMLHttpRequest();
			request2.open("get", "UserServlet.do?method7=userEmailLogin&email="+usernameinputval+"&password="+passwordinputval);
			request2.send(null);
			request2.onreadystatechange = function() {
				if (request2.readyState == 4 && request2.status == 200) {
					var ret = request2.responseText;
					 n1 = ret;
	                alert(n1);
	                if(n1>0){
	                	
	            	location = "frist.jsp";
	            		
	            		}else{
	            		     alert("账号或密码填写错误，登入失败。");
	            		}
				}
			}
		}else{
			  alert("账号或密码填写错误，登入失败。");
		}
			
		
	}
		
	
	
	
	
</script>

</html>