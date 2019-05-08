<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>加入购物车</title>
		<link rel="stylesheet" href="css/shoppingcar.css" />
	</head>

	<body>
	
	
	
	
	
	
<c:if test="${!empty carxs}">
			<div class="sc_list">
				<div class="paiban_div" style="float: left;">
					
				    <ul class="clearfix">
					<li class="li_1">商品
						<div style="clear:both;"></div>
					</li>
					<li class="li_2">单价
						<div style="clear:both;"></div>
					</li>
					<li class="li_3">数量
						<div style="clear:both;"></div>
					</li>
					<li class="li_4">小计
						<div style="clear:both;"></div>
					</li>
					<li class="li_5">操作
						<div style="clear:both;"></div>
					</li>
				</ul>
				</div>
			</div>
	<c:forEach items="${carxs}" var="entry">
<form action="" method="get">
				<div class="sc_list_001">

					<input type="checkbox" name="cai" onclick="getSum();selectOne()" class="select_goods" />
					<img src="${pageContext.request.contextPath}/${entry.goods_pic}/1.jpg" class="pic_001"/>
					<ul class="clearfix">
						<li class="li_11" ><span class="gn" id="gn${entry.goods_id}">${entry.goods_name}</span>
						<span class="ge" id="ge${entry.goods_id}">${entry.goods_edition}</span>
						<span class="gc" id="gc${entry.goods_id}">${entry.goods_color}</span></li>
						<li class="li_22">￥<span class="price_per" id="jg${entry.goods_id}">${entry.goods_price}.00</span> </li>
						<li class="li_33">

							<div class="add_number">
								<input type="text"  class="pro_quantity"  id="num${entry.goods_id}" value="${entry.goods_num }"/>
							
								<div class="number_caculate">
									<a class="pro_quantity_plus" href="javascript:;" onclick="change('+',${entry.goods_id},${entry.discounts})">+</a>
									<a class="pro_quantity_minus" href="javascript:;" onclick="change('-',${entry.goods_id},${entry.discounts})">−</a>
								</div>
                            </div>
						</li>
						<li class="li_44">￥<span  class="per_price"  style="color: red;" id="smalltotal${entry.goods_id}">${entry.goods_num*entry.goods_price-entry.discounts}
					</span ><span style="color: red;"></span></li>
						<li class="li_55">
						<a href="javascript:;" onclick="delProFromCart(${entry.goods_id},this)"  class="delBtn" style="text-decoration:none;color:black">删除</a></li>
						</ul>

			</div>

			</form>
         </c:forEach>
			<div class="sc_total_tool ">
				<div class="sc_checkbox" style="float: left;">
					<input type="checkbox" id="check" onclick="quanxuan()" name="check"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;全选
				</div> 
					<div class="sc_total_btn">
					<a href="MyJsp.jsp">立即结算</a>
				</div>
				<div class="sc_total_price" >
					<label>总计：</label> <span class="finall_price">¥&nbsp; <span class="money" id="money" >0.00</span></span>
										<div class="total_choose">已选择	<span class="total_num" style="font-weight: bold;color: #ca151e;" id="total_num"></span>件商品
					</div>
				</div>
				
			</div>
	</c:if>
	<c:if test="${empty carxs}">
<div class="cart-empty cart-empty-nologin" id="J_cartEmpty" style="with:500px;height:500px;text_align:center;margin-left:400px;">
            	<h2>您的购物车还是空的！</h2>
            	<div style="text-align:center;width:200px;height:50px;padding-top:40px;padding-left:20px;">
            	<a href="javascript:history.back(-1)" class="btn btn-primary btn-shoping J_goShoping" style="text-decoration:none;color:gray;">马上去购物</a>
       		 </div>
		</div>	
</c:if>
	</body>
	
	
	
	<script type="text/javascript">

function delProFromCart(goods_id,ob){
alert(goods_id);

var goods_name=document.getElementById("gn"+goods_id).innerHTML;
var goods_edition=document.getElementById("ge"+goods_id).innerHTML;
var goods_color=document.getElementById("gc"+goods_id).innerHTML;
//alert(goods_name);
//alert(goods_edition);
//alert(goods_color);

	var cai =document.getElementsByName("cai");
			var jg = document.querySelectorAll(".per_price");
			  var num=document.getElementsByClassName("pro_quantity");
			var sum=0;	//表示总价格
			var count=0;
 var a =ob.parentNode.parentNode.parentNode;
				if(confirm("您是否要删除该项？")){
				
				
				var request = new XMLHttpRequest();
			
			request.open("get", "car.do?method=delfromcar&phone_num="
					+ ${username}+ "&goods_name=" + goods_name
					+ "&goods_edition=" +goods_edition+ "&goods_color=" + goods_color+"&goods_id="+goods_id, false);
					
					 a.remove();
			request.send(null);
			request.onreadystatechange = function() {
				if (request.readyState == 4 && request.status == 200) {
				alert("jjdf");
					
				}
			}	
	
			getSum();
			}

	}		
			
			
			
		
		function getSum()
		{
	
			var cai =document.getElementsByName("cai");
			var jg = document.querySelectorAll(".per_price");
			  var num=document.getElementsByClassName("pro_quantity");
			var sum=0;	//表示总价格
			var count=0;
			for(var i=0;i<cai.length;i++)
			{
				if(cai[i].checked)
				{
					sum=sum+1*jg[i].innerHTML;
			
       count=count+1*num[i].value;
				}
			}
			
			document.getElementById("money").innerHTML=sum;
			document.getElementById("total_num").innerHTML=count;
		}
		function quanxuan()
		{
					alert("全选");
			var all= document.getElementById("check");
			var cai=document.getElementsByName("cai");	
			for(var i=0;i<cai.length;i++)
			{
				cai[i].checked=all.checked;
			}

			getSum();
		}
	function selectOne(){
	var f=true;
  var all= document.getElementById("check");
			var cai=document.getElementsByName("cai");	
     for(var i=0;i<cai.length;i++){
   if(cai[i].checked!=f){
  all.checked=false;
  break;
}
all.checked=f;
}
	
	}
	
	//+—的监听事件
		function change(op,goods_id,discounts){
		
			var  value = document.getElementById("num"+goods_id).value;  //避免增加的都是同一个，即第一个的数量，加上id进行拼接，即每次增加的都是不同的
			var  jgvalue = document.getElementById("jg"+goods_id).innerHTML;//单价
				jgvalue=parseInt(jgvalue);
              parseInt(discounts);
	//alert(jgvalue);
	//alert(discounts);
			if(op=="+"){
		var x=(value*1) + 1;
		x=parseInt(x);
	
				document.getElementById("num"+goods_id).value =x;
				var y=1*x*jgvalue;
				y=parseInt(y);
				
				alert(y);
				document.getElementById("smalltotal"+goods_id).innerHTML=y;
				getSum();
					
				var request = new XMLHttpRequest();
			
			request.open("get", "car.do?method=delfromcar&phone_num="
					+ ${username}+ "&goods_name=" + goods_name
					+ "&goods_edition=" +goods_edition+ "&goods_color=" + goods_color+"&goods_id="+goods_id, false);
					alert("");
					 a.remove();
			request.send(null);
			request.onreadystatechange = function() {
				if (request.readyState == 4 && request.status == 200) {
				alert("jjdf");
					
				}
			}		
				
			}
			
			if(op=="-"){
			value=parseInt(value);
			
				if(value==1){
				alert(value);//value 的值怎么是1？？？？？
					//delProFromCart(goods_id,this);
					return ;   //直接返回，不执行下面的代码了
				}
				x=(value*1) - 1;
			x=parseInt(x);
				document.getElementById("num"+goods_id).value = x;
				y=x*jgvalue;
				y=parseInt(y);
				document.getElementById("smalltotal"+goods_id).innerHTML =y;
				getSum();
			}
				
				var request = new XMLHttpRequest();
			
			request.open("get", "car.do?method=delfromcar&phone_num="
					+ ${username}+ "&goods_name=" + goods_name
					+ "&goods_edition=" +goods_edition+ "&goods_color=" + goods_color+"&goods_id="+goods_id, false);
					alert("");
					 a.remove();
			request.send(null);
			request.onreadystatechange = function() {
				if (request.readyState == 4 && request.status == 200) {
				alert("jjdf");
					
				}
			}		
			
			
		}
	
		
	</script>
	
	
</html>
