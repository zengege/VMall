<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>

	<style>
			*{
			padding:0;
			margin:0;
			
		}
		#head {
			width: 100%;
			height: 90px;
			line-height: 30px;
		}
		
		.now {
			height: 20px;
			width: auto;
			color: #A9A9A9;
			display: inline;
			position: relative;
			left: 780px;
			top: 30px;
			line-height: 10px;
			font-size: 12px;
			margin-left: 10px;
		}
		
		.now div:hover {
			color: black;
		}
		
		.xian {
			width: 960px;
			height: 30px;
			margin-left: 10px;
			margin-top: 10px;
			padding-top: 15px;
			padding-left: -20px;
			border-style: none;
			border-top: solid 1px #808080;
		}
		
		.bt {
			border: none;
			border-left: solid 1px #A9A9A9;
			font-weight: 300;
			font-size: 15px;
			heigth:26px;
			line-height: 26px;
		}
		.bt1{
			width:480px;
		}
		.bt2{
			width:124px;
		}
		.bt3{
			width:104px;
		}
		.bt4{
			width:124px;
		}
		.bt5{
			width:124px;
		}
		.order-center{
			height: 140px;
			margin-top:10px;
			border-top:solid 1px #A9A9A9;
			border-bottom:solid 1px #A9A9A9;
		}
		
		
		.center {
			border-left: solid 1px #A9A9A9;
			font-weight: 300;
			font-size: 13px;
			float:left;
			height: 140px;
		}
		
		.c1{
			width:480px;
			border-left:none;
		}
		.c2{
			width:124px;
			text-align: center;
			line-height: 140px;
			height: 140px;
		}
		.c3{
			width:104px;
			text-align: center;
			line-height: 140px;
			height: 140px;	
		}
		.c4{
			width:124px;
			text-align: center;
			line-height: 140px;
			height: 140px;
			border-right: solid 1px #A9A9A9;
		}
		.c5{
			border:none;
			width:123px;
			text-align: center;
			line-height: 40px;
			height: 40px;
			color:black;
		}
		
		.pname{
			position:absolute;
			font-size: 13px;
			color:black;
			line-height: 140px;
			height: 140px;
			margin-left: 30px;
		}
		
		#list-group-empty {
			display:none;
			width: 960px;
			height: 30px;
			position: relative;
			top: 100px;
			line-height: 20px;
			text-align: center;
		}
		
		.bnr{
			width: 960px;
			color: gray;
			margin-left: 20px;
			margin-top: 5px;
		}

		.btnr {
			width: 960px;
			height: 30px;
			color: gray;
			margin-top: 20px;
			background: #DCDCDC;
			margin-left: 20px;
		}
		.order{
			width: 960px;
			height: 200px;
			color: gray;
			margin-top: 15px;
			font-size: 13px;
		}
		.order-detail{
			cursor: pointer;
		} 
		li{
			list-style: none;
		}
		#submit{
			width:123px;
			float:right;
			color:black;
			background:#DCDCDC ;
			border:solid 1px #DCDCDC;
			font-size: 13px;
		}
		#big{
			min-height: 600px;
		}
		
		.page li {
			display:inline-block;
			cursor: pointer;
			color:black;
			font-size: 14px;
			width: 20px;
			height: 20px;
			border:1px solid black;
			border-radius:10px;
		}
		.page{
			text-align: center;
		}
		
		li a:hover{
			color:red;
		}
		
	</style>
			
	</head>
	<body>
	<div id="big">
		<div id="head">
			<span class="wb" style="position: absolute;top:55px;font-size: 20px;left:40px;">我的订单</span>
			<span class="now">最近六月内订单</span>
		</div>

		<div class="xian">
			<input class="active" type="button" value="全部有效订单"  onclick="changeA(0)"/>
			<input type="button" value="待支付"  onclick="changeA(1)"/>
			<input type="button" value="待评价"  onclick="changeA(2)"/>
			<input type="button" value="已取消"  onclick="changeA(3)"/>
			<input type="button" value="已完成"  onclick="changeA(4)"/>
		</div>
		
		<div class="he" style="display: block;">
			<div class="btnr">
				<table>
					<thead>
						<th class="bt bt1">商品</th>
						<th class="bt bt2">单价/元</th>
						<th class="bt bt3">数量</th>
						<th class="bt bt4">实付款/元</th>
						<th class="bt bt5">订单状态及操作</th>
					</thead>
				</table>
			</div>
			<div id="bnr1" class="bnr">
				<div id="list-group-empty">您暂时没有相关记录。</div>
				<ul  id="noempty">
				</ul>
					
			</div>
			
		</div>	
		<div class="page">
			<ul id="pcount">
				
			</ul>
		</div>
	</div>	
			
		
	</body>
	
	<script>
	var now_a=0,now_b=1; // a状态 ，b页码
	
	window.onload = function(){
		content(now_a,now_b); //获取内容
		page(now_a); //获取页码
	}
	
	function changeA(a) //改变状态（默认第一页）
	{
		content(a,1);
		page(a);
	}
	
	function changeB(b) //不改变状态改变页码
	{
		content(now_a,b);
		
	}
	
	function page(a)
	{
		var request = new XMLHttpRequest();
		var pcount = document.getElementById("pcount");
			pcount.innerHTML = "";
			request.open("get" , "order.do?method=page&condition="+a);
			request.send(null);
				request.onreadystatechange = function(){
					if(request.readyState == 4 && request.status == 200){
						var vet = request.responseText;
						var json = eval(vet);
						alert(vet);
						if(vet != "[]"){
							var i;
							for (i=0;i<json.length;i++) {
								var s = "<li><a id='ye' onclick='changeB("+json[i].page+")'>"+json[i].page+"</a></li>&nbsp;&nbsp;&nbsp;&nbsp;";
								pcount.innerHTML += s;
							}
						}
					}
			}
		
	}
			
		function content(a,b){
			b=1;
			now_a = a;
			now_b = b;
			var request = new XMLHttpRequest();
			var empty = document.getElementById("list-group-empty");
			var show = document.getElementById("noempty");
				show.innerHTML = "";
				request.open("get" , "order.do?method=findall&condition="+a+"&page="+b);
				request.send(null);
					request.onreadystatechange = function(){
						if(request.readyState == 4 && request.status == 200){
							var vet = request.responseText;
							var json = eval(vet);
							alert(vet);
							if(vet != "[]"){
								empty.style.display= "none";
								for (var i=0;i<json.length;i++) {
									if(json[i].cname == "待评价"){
										s ="<li class= 'order'><div class='order-top'><span id='otime'>"+json[i].time
										+"</span>&nbsp;&nbsp;&nbsp;&nbsp;订单号:<span id='onumber'>"+json[i].id+"</span><div class='top-right' style='float:right;'>"
										+"<span> 审核通过</span>&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;<span id='ocondition'>"+json[i].cname+"</span>&nbsp;"
										+"</div></div><div class='order-center'><div class='center c1'>"
										+"<img  src='"+ json[i].pic+"/1.jpg"+ "' style='height: 120px; margin-top: 10px;' id='op'>"
										+"<span class='pname' id='opname'>"+json[i].name+"&nbsp;&nbsp;"+json[i].edition+"("+json[i].color+")"+"</span></div>"
										+"<div class='center c2' id='oprice'>"+"￥"+json[i].price+"</div>"
										+"<div class='center c3' id='ocount'>"+json[i].count+"</div>"
										+"<div class='center c4' >"+"￥"+json[i].price*json[i].count+"</div><div class='center c5'>"
										+"<span style='display:block;margin-top:30px;'  class='order-detail'id='cancel' onclick='qx("+json[i].id+")'>取消订单</span>"
										+"<span style='display:' class='order-detail' id='detail' onclick='detail("+json[i].id+")'>订单详情</span></div></div>"
										+"<div><input id='submit' type='button' value='去评价' style='cursor: pointer;' onclick='pj()'></div></li>";	
									}else if(json[i].cname == "待支付"){
										s ="<li class= 'order'><div class='order-top'><span id='otime'>"+json[i].time
										+"</span>&nbsp;&nbsp;&nbsp;&nbsp;订单号:<span id='onumber'>"+json[i].id+"</span><div class='top-right' style='float:right;'>"
										+"<span> 审核通过</span>&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;<span id='ocondition'>"+json[i].cname+"</span>&nbsp;"
										+"</div></div><div class='order-center'><div class='center c1'>"
										+"<img  src='"+ json[i].pic+"/1.jpg"+ "' style='height: 120px; margin-top: 10px;' id='op'>"
										+"<span class='pname' id='opname'>"+json[i].name+"&nbsp;&nbsp;"+json[i].edition+"("+json[i].color+")"+"</span></div>"
										+"<div class='center c2' id='oprice'>"+"￥"+json[i].price+"</div>"
										+"<div class='center c3' id='ocount'>"+json[i].count+"</div>"
										+"<div class='center c4' >"+"￥"+json[i].price*json[i].count+"</div><div class='center c5'>"
										+"<span style='display:block;margin-top:30px;'  class='order-detail'id='cancel' onclick='qx("+json[i].id+")'>取消订单</span>"
										+"<span style='display:block;' class='order-detail' id='detail' onclick='detail("+json[i].id+")'>订单详情</span></div></div>"
										+"<div><input id='submit' type='button' value='去支付' style='cursor: pointer;'></div></li>";
									}else{
										s ="<li class= 'order'><div class='order-top'><span id='otime'>"+json[i].time
										+"</span>&nbsp;&nbsp;&nbsp;&nbsp;订单号:<span id='onumber'>"+json[i].id+"</span><div class='top-right' style='float:right;'>"
										+"<span> 审核通过</span>&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;<span id='ocondition'>"+json[i].cname+"</span>&nbsp;"
										+"</div></div><div class='order-center'><div class='center c1'>"
										+"<img  src='"+ json[i].pic+"/1.jpg"+ "' style='height: 120px; margin-top: 10px;' id='op'>"
										+"<span class='pname' id='opname'>"+json[i].name+"&nbsp;&nbsp;"+json[i].edition+"("+json[i].color+")"+"</span></div>"
										+"<div class='center c2' id='oprice'>"+"￥"+json[i].price+"</div>"
										+"<div class='center c3' id='ocount'>"+json[i].count+"</div>"
										+"<div class='center c4' >"+"￥"+json[i].price*json[i].count+"</div><div class='center c5'>"
										+"<span style='display:block;line-height: 140px;height: 140px;' class='order-detail' id='detail' onclick='detail("+json[i].id+")' >订单详情</span></div></div></li>";
									}
									show.innerHTML += s;
								}
				
							}else{
								empty.style.display= "block";
							}
						}
				}
		}
		
		function qx(id){
			
			var request = new XMLHttpRequest();
			
			request.open("get" , "order.do?method=cancel&id="+id);
			request.send(null);
				request.onreadystatechange = function(){
					if(request.readyState == 4 && request.status == 200){
						var vet = request.responseText;
						var n = eval(vet);
						if( n == 1){
							alert("修改成功!");
						}
					}
				}
		}
		
		function detail(id){
			alert(id);
			var request = new XMLHttpRequest();
			
			request.open("get" , "address.do?method=findbyid&id="+id);
			request.send(null);
				request.onreadystatechange = function(){
					if(request.readyState == 4 && request.status == 200){
						var vet = request.responseText;
						var json= eval(vet);
						for (var i=0;i<json.length;i++) {
							var name = json[i].name;
							var phone = json[i].phone;
							var address = json[i].sheng+json[i].shi+json[i].qu+json[i].detail_ad;
							alert("订单号:"+id+"\n"+"收货人:"+name+"\n"+"收货号码:"+phone+"\n"+"收货地址:"+address);
						}
						
					}
				}
		}
		
		
		function pj(){
			location="judge.jsp";
		}
		
	</script>

</html>