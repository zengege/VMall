<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
	</head>
	<style>
		*{
	margin: 0;
	padding: 0;
	background-color: rgb(255,255,255);
}
a{
	text-decoration: none;
	color: black;
}
a:hover{
	color: red;
}
#shortcut{
	width: 100%;
	height: 30px;
	line-height: 30px
	text-align: center;
}
.layout{
	width: 1200px;
	height: 100%;
	margin: 0 auto;
}
#abox{
	
	width: 675px;
	height: 30px;
	float: left;
	
}
#abox li{
	margin-top: 7px;
	padding-left: 6px;
	padding-right: 6px;
	font-size: 13px;
	float: left;
	border-right: 1px solid gainsboro;
	list-style:none ;
	
}
#abox a{
	color: grey;
}
#abox a:hover{
	color: red;
}

li{
	list-style: none;
}
#register{
	float: right;
	width: 250px;
	height: 30px;
}
#register a{
	color: grey;
}
#register a:hover{
	color: red;
}
#register li{
	margin-top: 7px;
	padding-left: 6px;
	padding-right: 6px;
	font-size: 13px;
	float: left;
	border-right: 1px solid gainsboro;
	list-style:none ;
}
#head1{
	min-width: 1200px;
	height: 50px;
	padding: 10px 0;
}
#logo{
	float: left;
	width: 240px;
	height: 50px;
	margin-left: 50px;
}
#abox1{
	float: left;
}
#abox1 li{
	float: left;
	font-size: 18px;
	padding-right: 20px;
	line-height: 50px;
}
#abox1 a:hover{
	text-decoration: underline;
}


#righthead{
	float: right;
	width: 300px;
	height: 42px;

}
#search{
	width: 285px;
	height: 32px;
}
#search-kw{
	padding-left: 10px;
	width: 309px;
	height: 32px;
}
#search .button{
	    background-position: 0 -21px;
	
}
.cang{
	width: 100%;
	height: 300px;
	position: absolute;
	z-index: 1;
	display: none;
	overflow: hidden;
}
.top_cang{
	
	width: 1200px;
	height: 56px;
	margin: 0 auto;
	line-height: 56px;
	border top: 1px solid;
	
}
.bottom_cang{
	width: 1200px;
	margin: 0 auto;
	height: 220px;
}
.all_goods{
	line-height: 56px;
	width: 110px;
	height: 56px;
	float: left;
}
.types{
	width: 1090px;
	height: 56px;
	line-height: 56px;
	float: left;
}
.types li{
	margin-right: 30px;
	float: left;
}
.bottom_cang li{
	float: left;
	width: 171px;
	height: 200px;
	text-align:center;
	font
}
.top_cang a{
	color: rgb(165,153,153);
}
.top_cang a:hover{
	color: red;
}
.grid_price{
	color: red;
}
.bottom_cang img{
	margin-top:20px;
	width: 130px;
	margin-bottom: 18px;
}
	</style>
	<body>
			<div id="shortcut">
			<div class="layout">
			<div id="abox"><ul>
				<li><a href="">首页</a></li>
				<li><a href="https://consumer.huawei.com/cn/">华为官网</a></li>
			    <li><a href="http://www.honor.cn/">荣耀官网</a></li>
				<li><a href="#">花粉俱乐部</a></li>
				<li><a href="#">帮助中心</a></li>
				<li><a href="#">V码(优购码)</a></li>
				<li><a href="#">企业购</a></li>
				<li><a href="#">下载App</a></li>
			</ul>
			</div>
			<div id="register">
				<li><a href="#">请登录 </a></li>&nbsp;&nbsp;
				<li><a href="#">注册</a></li>
			    <li><a href="#">我的订单</a></li>
				<li><a href="#">购物车</a></li>
				
			</div>
			</div>
	</div>
	<div id="head1">
		<div class="layout">
		    <div id="lefthead">
		    	<div id="logo">
		    		<img src="img/logomain.png"/>
		    	</div>
		    	<div class="naver" id="abox1">
		    		<ul class="clearfix">
		    			<li onmouseover="go(0)" onmouseout="leave(0)"><a href="#" >手机</a></li>
		    			<li onmouseover="go(1)" onmouseout="leave(1)"><a href="#" >笔记本&平板</a></li>
		    			<li onmouseover="go(2)" onmouseout="leave(2)"><a href="#" >智能穿戴</a></li>
		    			<li><a href="#">智能家居</a></li>
		    			<li><a href="#">通用配件</a></li>
		    			<li><a href="#">专属配件</a></li>
		    		</ul>
		    	</div>
		    	
	        </div>
	        
	        <div id="righthead">
	        	<div id="searchBar_area">
	        		<div id="search_bar_form">
	        			<form  method="get">
	        				<input type="text" class="text" maxlength="200" id="search-kw" autocomplete="off">
	        				<input type="submit" class="button" value="搜索"/>
	        			</form>
	        		</div>
	        		<div id="search_bar_key">
	        			
	        		</div>
	        		<div id="search_history">
	        			
	        		</div> 
	        	</div>
	        </div>
	        
	        </div>
	  
	        <div class="cang" onmouseover="go(0)" onmouseout="leave(0)" >
		    		<div class="top_cang" >
		    			<div class="all_goods">
		    				<a href="#">全部手机&gt;</a>
		    			</div>
		    		<div class="types">
		    			<ul class>
		    				<li><a href="#">荣耀</a></li>
		    				<li><a href="#">HUAWEI P系列</a></li>
		    				<li><a href="#">荣耀畅玩系列</a></li>
		    				<li><a href="#">HUAWEI Mate系列</a></li>
		    				<li><a href="#">HUAWEI Nova系列</a></li>
		    				<li><a href="#">HUAWEI 麦芒系列</a></li>
		    				<li><a href="#">HUAWEI 畅享系列</a></li>
		    			</ul>
		    		</div>
		    		</div>
		    		
		    		<div class="bottom_cang">
		    			<ul>
		    				<li>
		    					<a href="#">
		    						<p class="grid_img"><img src="img/9.jpg"/>
		    						</p>
		    						<div class="grid_title">
		    							HUAWEI nova3
		    						</div>
		    						<p class="grid_price">
		    							暂无报价
		    						</p>
		    					</a>
		    				</li>
		    				<li>
		    					<a href="#">
		    						<p class="grid_img"><img src="img/10.jpg"/>
		    						</p>
		    						<div class="grid_title">
		    							荣耀Play
		    						</div>
		    						<p class="grid_price">
		    							￥1999
		    						</p>
		    					</a>
		    				</li>
		    				<li>
		    					<a href="#">
		    						<p class="grid_img"><img src="img/11.jpg"/>
		    						</p>
		    						<div class="grid_title">
		    							HUAWEI P20
		    						</div>
		    						<p class="grid_price">
		    							￥3788
		    						</p>
		    					</a>
		    				</li>
		    				<li>
		    					<a href="#">
		    						<p class="grid_img"><img src="img/12.jpg"/>
		    						</p>
		    						<div class="grid_title">
		    							荣耀9i
		    						</div>
		    						<p class="grid_price">
		    							￥1399
		    						</p>
		    					</a>
		    				</li>
		    				<li>
		    					<a href="#">
		    						<p class="grid_img"><img src="img/13.jpg"/>
		    						</p>
		    						<div class="grid_title">
		    							荣耀10
		    						</div>
		    						<p class="grid_price">
		    							￥2599
		    						</p>
		    					</a>
		    				</li>
		    				<li>
		    					<a href="#">
		    						<p class="grid_img"><img src="img/14.jpg"/>
		    						</p>
		    						<div class="grid_title">
		    							HUAWEI nova2s
		    						</div>
		    						<p class="grid_price">
		    							￥2399
		    						</p>
		    					</a>
		    				</li>
		    				<li>
		    					<a href="#">
		    						<p class="grid_img"><img src="img/15.jpg"/>
		    						</p>
		    						<div class="grid_title">
		    							HUAWEI Mate 10 Pro
		    						</div>
		    						<p class="grid_price">
		    							￥4499
		    						</p>
		    					</a>
		    				</li>
		    			</ul>
		    		</div>
		    	</div>
		    	<div class="cang" onmouseover="go(1)" > 
		    		<div class="top_cang">
		    			
		    		</div>
		    		<div class="bottom_cang">
		    			
		    		</div>
		    	</div>
		    	<div class="cang"  onmouseover="go(2)"  >
		    		<div class="top_cang">
		    			
		    		</div>
		    		<div class="bottom_cang">
		    			
		    		</div>
		    	</div>
	    </div>
	</div>
	 </div>
	</body>
	<script>
		function go(a){
			var x = document.querySelectorAll('.cang');
			x[a].style.display = "block";
				
			
		}
		function leave(a){
			var x = document.querySelectorAll('.cang');
			
					x[a].style.display="none";
		}
		
		
	</script>
</html>
