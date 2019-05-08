<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="Generator" content="EditPlus®">
		<meta name="Author" content="">
		<meta name="Keywords" content="">
		<meta name="Description" content="">
		<link rel="stylesheet" href="css/pstyle.css" />
		<script type="text/javascript" src='js/jquery.min.js'></script>
		<script type="text/javascript" src='js/scroll.1.3.js'></script>
		<script type="text/javascript" src='js/main.js'></script>
		<title></title>
	</head>
	<style>
		*{
			margin:0;
			padding:0;
		}
		#bigleft{
			width: 960px;
			height: 1000000px;
		}
		#grname {
			width: 700px;
			height: 100px;
			margin-left: 30px;
			color: #A9A9A9;
			margin-bottom: 30px;
		}
		
		#name {
			height: 16px;
			width: 100px;
			line-height: 16px;
			font-size: 16px;
			color: red;
			margin-bottom: 10px;
		}
		
		#ddxx {
			margin-top: 30px;
			background: #DCDCDC;
			width: 600px;
			height: 50px;
			margin-bottom: 20px;
			margin-left: 10px;
		}
		
		#ddxx li {
			list-style-type: none;
			float: left;
			margin-left: 15px;
		}
		
		#ddxx li p {
			display: inline;
			font-size: 15px;
			margin-left: 10px;
		}
		
		#myifmt {
			width: 700px;
			height: 500px;
			margin-top: 40px;
			margin-bottom: 10px;
		}
		
		#myifmt p {
			clear: both;
		}
		
		.advice3,.advice4{
			width: 700px;
			height: 100px;
			background: #DCDCDC;
			margin-bottom: 10px;
		}
		
		
		.xxnr {
			float: left;
			width: 440px;
			height: 90px;
			margin-left: 40px;
		}
		
		.xxnr span {
			display: inline;
			float: left;
		}

	</style>

	<body>
		<!--
        	左边最大的盒子
        -->
		<div id="bigleft">

			<div id="grname">
				<img src="img/touxiang.png" width="116px" ;height="116px" />
				<div id="wel" style="position: absolute;top: 60px;left: 180px;">
					<p id="pname">小黑</p>
					<p style="display: inline; ">欢迎登录！</p>
				</div>
			</div>
			<div id="ddxx">
				<ul>
					<li>
						<img src="img/dzf.png" width="23px" height="23px" />
						<p> 待支付</p>
					</li>
					<li>
						<img src="img/dsh.png" width="23px" height="23px" />
						<p> 待收货</p>
					</li>
					<li>
						<img src="img/dpj.png" width="23px" height="23px" />
						<p> 待评价</p>
					</li>
					<li>
						<img src="img/dhh.png" width="23px" height="23px" />
						<p> 退换货</p>
					</li>
					<li>
						<img src="img/hsd.png" width="23px" height="23px" />
						<p> 回收单</p>
					</li>
				</ul>
			</div>

			<div id="myifmt">
				<p style="font-size: 12px;height: 15px;">我的消息</p>
				<div class="xian"></div>
				<div class="wdxx1"><img src="img/wdxx1.jpg" width="700px" height="200px" /></div>
				<div class="wdxx2"><img src="img/wdxx2.jpg" width="700px" height="200px" /></div>
				<div class="advice3">
					<img src="img/huaweiB5.png" width="60px" height="60px" style="margin-left: 10px;margin-top:20px;float: left;" />
					<div class="xxnr">
						<span style="color: darkred;font-size: 14px;padding-top: 5px;padding-left: 20px;">华为手环B5</span>
						<span style="float: left;padding-left: 10px;font-size: 10px; padding-top: 10px;">为你推荐</span>
									<span  style="display: inline;float: left;font-size: 10px;padding-top: 10px;padding-left: 10px;color: #F2F2F2; ">2018-7-25-11：31</span>
							<span class="m-detail " style="display: block;font-size: 15px;color: #F2F2F2;padding-top: 25px; padding-left: -20px;">【新品首发】购机限量赠配件大礼包，享3期分期免息，晒单评价赢好礼。赠品有限，送完即止。</span>
						</div>
						<input type="button "  value="查看详情 " style="width: 70px;text-align:center;height: 18px;font-size: 12px;margin-top: 40px;margin-left: 20px;"/>
				</div>
					<div class="advice4">
						<img src="img/huaweinova3.png "  width="60px " height="60px " style="position:absolute;top: 793px;left: 20px;display: inline;"/>
						<div class="xxnr " style="float: left;margin-left: 112px;">
							<span style="color: darkred;font-size: 14px;padding-top: 5px;padding-left: 20px;">华为nova3</span>
								<span style="float: left;padding-left: 10px;font-size: 10px; padding-top: 10px;">为你推荐</span>
									<span style="display: inline;float: left;font-size: 10px;padding-top: 10px;padding-left: 10px;color: #F2F2F2; ">2018-7-25-11：30</span>
							<span class="m-detail " style="display: block;font-size: 15px;color: #F2F2F2;padding-top: 25px; padding-left: -20px;">6+64G版首发，订金50抵100，尾款3期免息，老用户额外赠100元花币。</span>
						</div>
						<input type="button "  value="查看详情 " style="width: 70px;text-align:center;height: 18px;font-size: 12px;margin-top: 40px;margin-left: 20px;"/>
				</div>
			</div>

			
			<div id="lastsee1" style="height: 300px;width: 400px;position: absolute;top: 900px;">
	<p>最近浏览</p>
				<div class="xian "></div>
				 <div class="wc1200 row rowE " style="margin-top: -750px;width: 700px;">
			<div class="bd mt20 " >
				<div id="sca1 " class="warp-pic-list ">
					<div id="wrapBox1 " class="wrapBox ">
						<ul id="count1 " class="count clearfix ">
							<li>
								<a href="#2685 " class="img_wrap ">
									<img src="img/tj1.jpg " border="0 "></a>
								<span class="qh_title ">热门配件）荣耀畅玩手环 A2</span>
							</li>
							<li>
								<a href=" " class="img_wrap ">
									<img src="img/tj2.jpg " border="0 "></a>
								<span class="qh_title ">荣耀手环3</span>
							</li>
							<li>
								<a href=" " class="img_wrap ">
									<img src="img/tj3.jpg " border="0 "></a>
								<span class="qh_title ">荣耀9i</span>
							</li>
							<li>
								<a href=" " class="img_wrap ">
									<img src="img/tj4.jpg " border="0 "></a>
								<span class="qh_title ">Target[customer]</span>
							</li>
							<li>
								<a href=" " class="img_wrap ">
									<img src="img/tj5.jpg " border="0 "></a>
								<span class="qh_title ">Macys[customer]</span>
							</li>
							<li>
								<a href="#2685 " class="img_wrap ">
									<img src="img/tj6.jpg " border="0 "></a>
								<span class="qh_title ">Profitex[supplier]</span>
							</li>
							<li>
								<a href=" " class="img_wrap ">
									<img src="img/tj7.jpg " border="0 "></a>
								<span class="qh_title ">HUajin[supplier]</span>
							</li>
							<li>
								<a href=" " class="img_wrap ">
									<img src="img/tj8.jpg " border="0 "></a>
								<span class="qh_title ">Jcpenny[supplier]</span>
							</li>
							
						</ul>

					</div>
					<a id="right1 " class="prev icon btn " style="color: white;height: 30px;">&lt;</a>
					<a id="left1 " class="next icon btn "  style="color: white;height: 30px;">&gt;</a>
				</div>
			</div>
		</div>
		
		</div>
		</div>
		<!--
        	右边的长盒子
        -->
		<div id="rightlong" style="width: 500px;height: 1000px;position: absolute;left:735px;top: 20px;">
			<div class="righttop" >
				<img src="img/right1.jpg" width="320px" height="400px" />
			</div>
			<div class="rightbottom">
				<span style="display: block;margin-top: 30px;margin-bottom: 30px;font-size: 12px;">会员推荐</span>
				<img src="img/right2.png" width="320px" height="400px" />
			</div>
			
			
		</div>

	</body>
	<script>
	
	
	</script>
</html>