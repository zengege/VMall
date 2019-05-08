<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
	</head>
	<style>
		#djds{
			height: 30px;
			width: 190px;
			line-height: 12px;
			font-size: 12px;
			margin-bottom: 10px;
			color: darkgray;
		}
		#xiaotop {
			margin-left: 30px;
			height: 30px;
			width: 190px;
			line-height: 12px;
			font-size: 12px;
			padding-left: 10px;
			margin-bottom: 10px;
			color: darkgray;
		}
		
		#wode {
			background: #fff;
			margin-left:30px;
			background: #B40707;
			text-align: center;
			height: 50px;
			width: 150px;
			line-height: 50px;
		}
		
		li {
			list-style-type: none;
			height: 20px;
			width: 190px;
			line-height: 30px;
			padding-top: 10px;
			margin-bottom: 20px;
		}
		.znx div:hover{
			color: darkred;
		}	
		.help div:hover{
			color: darkred;
		}	
		
		.ddzx {
			height: 300px;
			width: 140px;
			margin-left: 50px;
		}
		#gk1{
			height: 280px;
			width: 140px;
	
			margin-top: 10px;
		}
		#gk1 a {
			text-decoration: none;
			color: darkgrey;
		}
		#znx_a a{
			text-decoration: none;
			color: #000000;
		}
	
		#help_a a{
			text-decoration: none;
			color: #000000;
		}
		#znx_a a:hover{
			color: red;
		}
		#help_a a:hover{
			color: darkred;
		}
		#znx_a a:visited{
			color: darkred;
		}
		#help_a a:visited{
			color: darkred;
		}
	
		.gmzz {
			line-height: 30px;
			margin-left: 60px;
			padding-bottom: 10px;
		}
		
		.jtd {
			height: 20px;
			margin-left: -17px;
			margin-top: 10px;
			width: 190px;
			line-height: 12px;
			font-size: 12px;
			padding-left: 10px;
			margin-bottom: 10px;
			color: darkgray;
		}
		.gmzz1 .jtd1 {
			height: 20px;
			margin-left: 30px;
			width: 190px;
			line-height: 12px;
			font-size: 12px;
			padding-left: 30px;
			margin-bottom: 10px;
			padding-bottom: 10px;
			margin-top: -13px;
			color: darkgray;
			
		}
		
		#gk1 .jtd a:hover {
			color: darkred;
		}
		#gk2 .jtd1 a:hover {
			color: darkred;
		}
		.gmzz1{
			position: relative;
			top:150px;
			left: 20px;
	
		}
		#gk2{
			height: 280px;
			width: 140px;
	
			margin-top: 30px;
		}
		#gk2 a {
			text-decoration: none;
			color: darkgrey;
		}
	</style>

	<body>
		<div id="xiaotop">
			<span>首页&nbsp;>&nbsp;我的商城></span>
			<span id="djds"></span>
		</div>
		<div id="wode">
			<a href="mymall.jsp" target="righthere" style="text-decoration: none;color: #000000;">我的商城</a>
		</div>
		<ul>
			<li>
				<div class="znx">
					<div id="tp" style="margin-top:30px; display: inline;margin-right: 10px;"> <img src="img/znx.png" height="20px" width="20px" /></div>
					<div id="znx_a" style="margin-top: -20px;display: inline;">
						<a style="line-height: 20px; margin-top: -10px;text-decration:none;color: #000000;" href="right_znx.jsp"; target='righthere' onclick="wbhead(0)">站内信</a>
					</div>
				</div>
			</li>
			<li>
				<div class="help">
					<div id="tp1" style="margin-top:30px; display: inline;margin-right: 10px;position: relative;top: 5px;left: -3px;"> <img src="img/help.jpg" height="25px" width="25px" /></div>
					<div id="help_a" style="margin-top: -20px;display: inline;position:relative;left:-8px;">
					<a style="line-height: 20px; margin-top: -10px;text-decration:none;color: #000000;" href="https://www.vmall.com/help/index.html" target="_blank" >帮助中心</a>
					</div>
				</div>
			</li>
			<li>
				<div class="ddzx">
					<div id="tp2" style="margin-top:30px; display: inline;position: relative;left:-50px"> <img src="img/mydingdan.png" height="25px" width="20px" /></div>
					<span class="wbddzx"style="position:relative;left:-40px;">订单中心</span>
					<div id="gk1">
					<div class="jtd">
						<a href="right_mydingdan.jsp" target='righthere' onclick="wbhead(2)">我的订单</a>
					</div>
					<div class="jtd">
						<a href="right_mythh.jsp" target='righthere' onclick="wbhead(3)"> 我的退换货</a>
					</div>
					<div class="jtd">
						<a href="right_mytk.jsp" target='righthere' onclick="wbhead(4)">我的退款</a>
					</div>
					<div class="jtd">
						<a href="right_myhsd.jsp" target='righthere' onclick="wbhead(5)">我的回收单</a>
					</div>
					<div class="jtd">
						<a href="right_sppj.jsp" target='righthere' onclick="wbhead(6)">商品评价</a>
					</div>
				</div>
				</div>
	</li>
			</ul>
				<div class="gmzz1">
					<div id="tp1" style="margin-top:30px; display: inline;margin-right: 10px;position: relative;top: 2px;left: 15px;"> <img src="img/gmzz.png" height="25px" width="25px" /></div>
					<span class="gmzz"  style="position:relative;left:-40px;">购买支持</span>
					<div id="gk2">
					<div class="jtd1">
						<a href="#">收货地址管理</a>
					</div>
					<div class="jtd1">
						<a href="#">实名认证</a>
					</div>
					<div class="jtd1">
						<a href="#">我的预约</a>
					</div>
					<div class="jtd1">
						<a href="#">到货通知</a>
					</div>
				</div>
	</div>
	</body>
<script>
	function wbhead(a){
		if(a==0){
		document.getElementById("djds").innerText = "站内信";
	}
	
			if(a==2){
		document.getElementById("djds").innerText = "我的订单";
	}
			if(a==3){
		document.getElementById("djds").innerText = "我的退换货";
	}
			if(a==4){
		document.getElementById("djds").innerText = "我的退款";
	}
			if(a==5){
		document.getElementById("djds").innerText = "我的回收单";
	}
			if(a==6){
		document.getElementById("djds").innerText = "商品评价";
	}
		if(a==7){
		document.getElementById("djds").innerText = "收货地址管理";
	}	
	if(a==8){
		document.getElementById("djds").innerText = "实名认证";
	}	
	if(a==9){
		document.getElementById("djds").innerText = "我的预约";
	}	
	if(a==10){
		document.getElementById("djds").innerText = "到货通知";
	}	
	
	}
	
	
</script>
</html>