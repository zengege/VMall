<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>确认订单</title>
<link rel="stylesheet" href="css/ensureorder.css" />
<script src="js/jquery-1.9.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/address_select/Popt.js"></script>
<script src="js/address_select/cityJson.js"></script>
<script src="js/address_select/citySet.js"></script>


<style type="text/css">
* {
	-ms-word-wrap: break-word;
	word-wrap: break-word;
}

html,body,h1,h2,h3,h4,h5,h6,div,ul,ol,li,dl,dt,dd,iframe,textarea,input,button,p,strong,b,i,a,span,del,pre,table,tr,th,td,form,fieldset,.pr,.pc
	{
	margin: 0;
	padding: 0;
	word-wrap: break-word;
	font-family: verdana, Microsoft YaHei, Tahoma, sans-serif;
	*font-family: Microsoft YaHei, verdana, Tahoma, sans-serif;
}

ul,ol,dl {
	list-style: none;
}

._citys {
	width: 450px;
	display: inline-block;
	border: 2px solid #eee;
	padding: 5px;
	position: absolute;
	z-index: 200;
}

._citys span {
	color: #56b4f8;
	height: 15px;
	width: 15px;
	line-height: 15px;
	text-align: center;
	border-radius: 3px;
	position: absolute;
	right: 10px;
	top: 10px;
	border: 1px solid #56b4f8;
	cursor: pointer;
}

._citys0 {
	width: 100%;
	height: 34px;
	background: white;
	display: inline-block;
	border-bottom: 2px solid #56b4f8;
	padding: 0;
	margin: 0;
}

._citys0 li {
	display: inline-block;
	line-height: 34px;
	font-size: 15px;
	color: #888;
	width: 80px;
	text-align: center;
	cursor: pointer;
}

.citySel {
	background-color: #56b4f8;
	color: #fff !important;
}

._citys1 {
	width: 100%;
	display: inline-block;
	background: white;
	padding: 10px 0;
}

._citys1 a {
	width: 83px;
	height: 35px;
	display: inline-block;
	background-color: #f5f5f5;
	color: #666;
	margin-left: 6px;
	margin-top: 3px;
	line-height: 35px;
	text-align: center;
	cursor: pointer;
	font-size: 13px;
	overflow: hidden;
}

._citys1 a:hover {
	color: #fff;
	background-color: #56b4f8;
}

.AreaS {
	background-color: #56b4f8 !important;
	color: #fff !important;
}
li{
	list-style: none;
}
</style>
</head>

<body>
	<br />
	<br />
	<br />

	<div id="main_div">

		<div class="logo_name clearfix">
			<a><img src="img/logo.png" /></a> <span class="i18n "
				name="msg_Checkout "
				style=" font: 18px/1.5 Microsoft YaHei, tahoma, arial;">确认订单
			</span>
		</div>

		<div id="address_div">
			<div id="address_word">
				<span style=" font: 18px/1.5 Microsoft YaHei, tahoma, arial;">收获人地址</span>
			</div>
			<div id="selected_address">
				<span>*选择地址</span> <select id="selcted_address1"
					autofocus="autofocus">

				</select>&nbsp;&nbsp; <span id="ensure_addresstip"
					style="color: red;font: 14px/1.5 Microsoft YaHei;display: none;">①请确认您的收货地址</span>
				<div style="margin-top: 15px;margin-left:200px ;">
					<input id="ensure_address" type="button" value="确认收获地址" />

				</div>
			</div>

			<div id="add_address">
				<form method="post" id="myform">
					<span>*收货人</span> <input name="username" type="text" id="username"
						placeholder="用户名" style="text-align: center;" />&nbsp;&nbsp;<span
						id="usernametip"
						style="color: red;font: 14px/1.5 Microsoft YaHei;display: none;">①请确认您的用户名</span><br />
					<br /> <span>*手机号码</span> <input name="tel" type="text"
						id="telephone" placeholder="手机号码" style="text-align: center;" />&nbsp;&nbsp;<span
						id="telephonetip"
						style="color: red;font: 14px/1.5 Microsoft YaHei;display: none;">①请填写正确的手机号码</span><br />
					<br /> <span>*收货地区</span> <input name="city" type="text" id="city"
						placeholder="收货地区" style="text-align: center;" />&nbsp;&nbsp;<span
						id="citytip"
						style="color: red;font: 14px/1.5 Microsoft YaHei; display: none;">①请确认您的收货地区</span><br />
					<br /> <span>*详细地址</span> <input name="detail_add" type="text"
						id="detail_address" placeholder="详细收货地址"
						style="text-align: center;" />&nbsp;&nbsp;<span
						id="detail_addresstip"
						style="color: red;font: 14px/1.5 Microsoft YaHei;display: none;">①请确认您的详细收货地址</span><br />
					<br /> <input type="button" value="添加新地址" id="add_new" />
				</form>

			</div>
		</div>

		<div id="middle_dindan">

			<div id="middle_dindan_left">
				<span id="hahaha">
					
				</span>


				<!-- 无用静态信息 -->
				<div id="other_information">
					<div id="receipt" style="margin-top: 35px;">
						<span>发票信息：</span> <span
							style="font-size: 12px; color: #a4a4a4;margin-left: 20px;">注：如果商品由第三方卖家销售，发票内容由其卖家决定，发票由卖家开具并寄出
						</span>
					</div>
					<div style="margin-top:10px;margin-left: 105px;font-size: 15px;">
						电子普通发票&nbsp;&nbsp;&nbsp;&nbsp;个人</div>
					<div style="margin-top: 30px;">
						<span>优惠与抵用：</span> <span style="font-size: 12px; color: #a4a4a4;">注：只使用于自营实物商品
						</span>
					</div>
					<a href="javascript:;"
						style="margin-left: 160px;margin-top: 30px;display: block;color: orangered;">使用优惠券</a>
					<div style="margin-left: 100px;margin-top: 20px;">
						<span>积分余额0,不足100不开使用</span>&nbsp;&nbsp;&nbsp;&nbsp;<a
							href="javascript:;" style="font-size: 12px; color: #a4a4a4;"">积分使用规则</a>
					</div>
					<div style="margin-left: 100px;margin-top:10px; ">
						<span>花瓣余额0,不足100不可使用</span>&nbsp;&nbsp;&nbsp;&nbsp;<a
							href="javascript:;" style="font-size: 12px; color: #a4a4a4; "">花瓣使用规则</a>
					</div>

				</div>

			</div>

			<div id="middle_dindan_right" >
				<div style="border-bottom: 1px solid #eaeaea;height: 100px;">
					<p style="font-size: 18px;">
						商品由<span style="color: rgb(202,40,29)">华为商城</span>选择合作快递
					</p>
				</div>

				<div class="detail_price">
					<ul>
						<li><span>商品总金额：</span> <span id="price_finally"></span>
						</li>
						<li><span>运费：</span> <span>￥0.00</span></li>

						<li><span>优惠金额：</span> <span>-￥0.00</span></li>
						<li><span>结算金额：</span> <span id="price_finally_1"
							style="font-size: 24px;color: #ca141d;"></span></li>
					</ul>

				</div>
			</div>

			<div style="clear: both;"></div>

		</div>

		<div id="detail_bottom">

			<div id="oder_submit">
				<div id="oder_price">
					<div id="price">
						<span>￥</span><span id="goods_price">1999.00</span>
					</div>
					<span
						style="float: right;font-size: 18px;height: 30px;line-height: 36px;">应付总额：</span>
					<div style="clear: both;"></div>
				</div>
				<div
					style="font-weight: 400;font-style: normal;float: right;margin:15px 0px;">
					<span>可获得积分:</span><span>200</span>
				</div>
				<div style="clear: both;"></div>
				<div class="order_submit_address" id="peopleTelAddressID">
					<div style="float: left;width: 50px;height: 50px;">
						<label>配送至：</label>
					</div>
					<ul>
						<li>

							<p id="deliveryAddress">
								<span id="addressID"></span>
							</p>
						</li>
						<li>
							<p>
								<span id="peopleID"></span>&nbsp;&nbsp;<span id="telID"></span>
							</p>
						</li>
					</ul>
				</div>
				<a  id="submit_good">提交订单</a>
			</div>

			<div style="clear: both;"></div>

		</div>

	</div>

	<img src="img/bottom.png" style="margin-top: 40px;width: 1339px;" />
<script type="text/javascript">
		
			$("#city").click(function(e) {
				SelCity(this, e);
				console.log("inout", $(this).val(), new Date())
			});
			var adress_id = "";
			var submit_good = document.getElementById("submit_good");
			var username = document.getElementById("username");
			var tel = document.getElementById("telephone");
			var city = document.getElementById("city");
			var detail_add = document.getElementById("detail_address");
			
			$("#add_new").click(function() {
				
				
				var usernameval = username.value;
				var telval = tel.value;
				var cityval = city.value;
				var detail_addval = detail_add.value;
				
				if(username.value==""||!reg.test(telephone.value)||detail_address.value==""){
					alert("信息填写失败或为空");
			    }else{
				
	            var request = new XMLHttpRequest();
				request.open("get" , "address.do?method=address&username="+usernameval+"&tel="+telval+"&city="+cityval+"&detail_add="+detail_addval);
				request.send(null);
				
				//回调函数
				request.onreadystatechange = function(){
					if(request.readyState==4 && request.status==200){
						var n = request.responseText;
						
						if(n>0){
							alert("新地址添加成功");
						}
					}
					
					}
                var request2 = new XMLHttpRequest();
				
				request2.open("get" , "address.do?method=findall");
				request2.send(null);
				//回调函数
				request2.onreadystatechange = function(){
					if(request2.readyState==4 && request2.status==200){
						var ret2 = request2.responseText;
						var json2 = eval(ret2);
						var selected= document.getElementById("selcted_address1");
						for(var i = 0 ; i<selected.options.length;){
							
							selected.removeChild(selected.options[i]);
							
						}
						for(var i = 0 ; i<json2.length ; i++){
							var op2 = new Option(json2[i].name+"-"+json2[i].phone+"-"+json2[i].sheng+json2[i].shi+json2[i].qu+json2[i].detail_ad);
							document.getElementById("selcted_address1").appendChild(op2);
							op2.value = json2[i].id ;
						}
						if(selected.options.length>0){
							ensure_addresstip.style.display="none";
							
						}
						
					}
				}
			    }
			});
			
			onload = function(){
				
				var request = new XMLHttpRequest();
				
				request.open("get" , "address.do?method=findall");
				request.send(null);
				//回调函数
				request.onreadystatechange = function(){
					if(request.readyState==4 && request.status==200){
						var ret = request.responseText;
						var json = eval(ret);
						for(var i = 0 ; i<json.length ; i++){
							var op = new Option(json[i].name+"-"+json[i].phone+"-"+json[i].sheng+json[i].shi+json[i].qu+json[i].detail_ad);
							document.getElementById("selcted_address1").appendChild(op);
							op.value = json[i].id ;
					//		alert(op.value);
						}
						var selected= document.getElementById("selcted_address1");
						
						if(selected.options.length<=0){
							ensure_addresstip.style.display="inline-block";
							
						}
						var selected= document.getElementById("selcted_address1");
						var selected_val = selected.options[selected.selectedIndex].innerHTML;
						
						
						
						var a = new Array();
						var as = selected_val.split("-");
						for(var i = 0; i < 3; i++) {
							a[i] = as[i];
						} 
						var name = a[0];
						var tel = a[1];
						var ad = a[2];
						document.getElementById("addressID").innerHTML = ad;
						document.getElementById("peopleID").innerHTML = name;
						document.getElementById("telID").innerHTML = tel;
						
					
						
					}
					
				}
				
				var inner7 = "";
				var sum = 0;
				<c:forEach items = "${list}" var="list">
				var price = ${list.goods_count}* ${list.goods_price};
				sum = sum + price;
					inner7 = inner7+"<li><div id='list_main'><img src='"+"${list.goods_pic}"+"/1.jpg"+"' style='width: 100px;height: 100px;' /><ul style='float: right;'><li style='margin-right:120px;'><span>"+"${list.goods_name}"+"${list.goods_edition}"+"${list.goods_color}"+"</span></li><li style='margin-right: 20px;'>×<span>"+${list.goods_count}+"</span></li><li style='margin-left: 60px;'>￥<span id='price_li'>"+price+"</span></li></ul></div>";
				
				</c:forEach>
				document.getElementById("hahaha").innerHTML = inner7;	
				document.getElementById("price_finally").innerHTML = sum;
				document.getElementById("price_finally_1").innerHTML = sum;
				document.getElementById("goods_price").innerHTML = sum;
			
				
			}
			
			
		</script>
<script type="text/javascript">
var ensure_address = document.getElementById("ensure_address");
ensure_address.onclick = function(){
	
	var selected= document.getElementById("selcted_address1");
	var selected_val = selected.options[selected.selectedIndex].innerHTML;
	adress_id = selected.options[selected.selectedIndex].value;
	alert(adress_id);
	var a = new Array();
	var as = selected_val.split("-");
	for(var i = 0; i < 3; i++) {
		a[i] = as[i];
	} 
	var name = a[0];
	var tel = a[1];
	var ad = a[2];
	document.getElementById("addressID").innerHTML = ad;
	document.getElementById("peopleID").innerHTML = name;
	document.getElementById("telID").innerHTML = tel;
	alert("收获地址已确定");
	
	
}


//
var username = document.getElementById("username");
var usernametip = document.getElementById("usernametip");
username.onblur = function(){
	var value1 = username.value;
	
	if(value1==""){
		usernametip.style.display="inline-block";
		return false
	}else{
		usernametip.style.display="none";
		return true;
	}
}



var telephone = document.getElementById("telephone");
var telephonetip = document.getElementById("telephonetip");
var reg = /^0?1[3|4|5|7|8][0-9]\d{8}$/;
telephone.onblur = function(){
	var value1 = telephone.value;
	
	if(!reg.test(value1)){
		telephonetip.style.display="inline-block";
		return false
	}else{
		telephonetip.style.display="none";
		return true;
	}
}

var detail_address = document.getElementById("detail_address");
var detail_addresstip = document.getElementById("detail_addresstip");
detail_address.onblur = function(){
	var value1 = detail_address.value;
	
	if(value1==""){
		detail_addresstip.style.display="inline-block";
		return false
	}else{
		detail_addresstip.style.display="none";
		return true;
	}
}
submit_good.onclick = function(){
	alert(adress_id);
	var request = new XMLHttpRequest();
	
	request.open("get" , "order.do?method=add&ad_id="+adress_id);
	request.send(null);
	//回调函数
	request.onreadystatechange = function(){
		if(request.readyState==4 && request.status==200){
			var ret = request.responseText;
			if(ret == "添加成功"){
				location = "checkstand.jsp";
			} 
		}
	}
	
}




</script>
	
</body>

</html>