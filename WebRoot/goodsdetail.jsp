<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<title>【荣耀Play】价格_参数_图片_ 华为商城</title>
<link rel="stylesheet" href="css/goodsdetail.css" />
<link rel="stylesheet" type="text/css" href="css/xcConfirm.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/jqzoom.css" type="text/css">
<link rel="stylesheet" href="css/style2.css" />
<link rel="stylesheet" href="css/sy.css" />
<link rel="stylesheet" href="css/showgoods.css" />

<script src="js/jquery-1.9.1.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$.browser = {};
	$.browser.mozilla = /firefox/.test(navigator.userAgent.toLowerCase());
	$.browser.webkit = /webkit/.test(navigator.userAgent.toLowerCase());
	$.browser.opera = /opera/.test(navigator.userAgent.toLowerCase());
	$.browser.msie = /msie/.test(navigator.userAgent.toLowerCase());
	$.browser.safari = /safari/.test(navigator.userAgent.toLowerCase());
</script>
<script src='js/scroll.1.3.js' type="text/javascript"></script>
<script src="js/xcConfirm.js" type="text/javascript" charset="utf-8"></script>
<!--图片放大js -->
<script src="js/jqzoom.pack.1.0.1.js" type="text/javascript"></script>
<script src="js/jquery.jqzoom1.0.1.js" type="text/javascript"></script>


<!--左右轮播js -->
<script type="text/javascript" src='js/main.js'></script>

<!--
       	悬浮
       -->
<script type="text/javascript" src='js/nav.js'></script>
<script type="text/javascript" src='js/xsj.js'></script>
<script src="js/down.js" type="text/javascript" charset="utf-8"></script>

</head>

<body>
	<div class="head_box">
		<div id="head_wrap">
			<div id="head_nav">
				<a class="head_nav_a" href="homepage.jsp">首页</a> <span
					style="color: #b0b0b0;">|</span> <a class="head_nav_a">华为官网</a> <span
					style="color: #b0b0b0;">|</span> <a class="head_nav_a">荣耀官网</a> <span
					style="color: #b0b0b0;">|</span> <a class="head_nav_a">花粉俱乐部</a> <span
					style="color: #b0b0b0;">|</span> <a class="head_nav_a">帮助中心</a> <span
					style="color: #b0b0b0;">|</span> <a class="head_nav_a">V码(优购码)</a>
				<span style="color: #b0b0b0;">|</span> <a class="head_nav_a">企业购</a>
				<span style="color: #b0b0b0;">|</span> <a class="head_nav_a">Select
					Region</a>
			</div>

			<div id="head_right">
				<div id="head_landing">
					<a class="head_nav_a" id="login" href="login.jsp">请登录</a>
					&nbsp;&nbsp; <a class="head_nav_a" id="register">注册</a> &nbsp; <span
						style="color: #b0b0b0;">|</span> &nbsp; <a class="head_nav_a">我的订单</a>
				</div>
				<div id="head_car">
					<img src="img/pic-car_1.png" /> <a class="head_car_text"
						onmouseover="showhd()" onmouseout="hd()">购物车(<span
						id="goods_num"></span>)
					</a>
					<div id="car_content" onmouseover="showhd()" onmouseout="hd()">


						<c:if test="${empty phone_num}">

							<a style="text-align=center;text-decoration:none;margin-top:50%"
								href="login.jsp">请先登录！</a>

						</c:if>
						<c:if test="${!empty phone_num}">
							<c:if test="${empty carxs}">
								<img src="img/kongkong.png" width="440px" height="230px">
							</c:if>
							<c:if test="${!empty carxs}">
								<c:forEach items="${carxs}" var="entry">
									<form action="" method="get">
										<div class="sc_list_001">
											<input type="checkbox" name="cai"
												onclick="getSum();selectOne()" class="select_goods" /> <img
												src="${pageContext.request.contextPath}/${entry.goods_pic}/1.jpg"
												class="pic_001" />
											<ul class="clearfix_1">
												<li class="li_11"><span class="gn"
													id="gn${entry.goods_id}">${entry.goods_name}</span> <span
													class="ge" id="ge${entry.goods_id}">${entry.goods_edition}</span>
													<span class="gc" id="gc${entry.goods_id}">${entry.goods_color}</span>
												<li class="li_22">￥<span class="price_per"
													id="jg${entry.goods_id}">${entry.goods_price}</span><span>&nbsp;&nbsp;x</span>
												<li class="li_33">
													<div class="add_number">

														<span class="pro_quantity" id="num${entry.goods_id}">${entry.goods_num }</span>
													</div>
												<li class="li_44">￥<span class="per_price"
													style="color: red;" id="smalltotal${entry.goods_id}">${entry.goods_num*entry.goods_price-entry.discounts}
												</span><span style="color: red;"></span>
											</ul>
										</div>
									</form>
								</c:forEach>
								<div class="sc_total_tool ">
									<div class="sc_checkbox" style="float: left;">
										<input type="checkbox" class="check" id="check"
											onclick="quanxuan()" style="	height:12px;width:12px;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;全选
									</div>
									<div class="sc_total_btn ">
										<a href="ensureorder.jsp">立即结算</a>
									</div>
									<div class="sc_total_price">
										<label>总计：</label> <span class="finall_price">¥&nbsp; <span
											class="money" id="money">0.00</span></span>
										<div class="total_choose">
											已选择 <span class="total_num" id="total_num"
												style="font-weight: bold;color: #ca151e;">0</span>件商品
										</div>
									</div>
								</div>
							</c:if>

						</c:if>


					</div>
				</div>

			</div>
		</div>
	</div>

	<div id="head1">
		<div class="layout">
			<div id="lefthead" style="float:left">
				<div id="logo">
					<img src="img/logo20170801113951.jpg" />
				</div>
				<div class="naver" id="abox1">
					<ul class="clearfix">
						<li onmouseover="go(0)" onmouseout="leave(0)"><a
							href="find.do?method=findbybig_type&big_type=手机  ">手机</a></li>
						<li onmouseover="go(1)" onmouseout="leave(1)"><a
							href="find.do?method=findbybig_type&big_type=笔记本平板  ">笔记本&平板</a></li>
						<li onmouseover="go(2)" onmouseout="leave(2)"><a
							href="find.do?method=findbybig_type&big_type=智能穿戴 ">智能穿戴</a></li>
						<li><a href="#">智能家居</a></li>
						<li><a href="#">通用配件</a></li>
						<li><a href="#">专属配件</a></li>
					</ul>
				</div>

			</div>


			<div id="find_wrap">
				<div id="find_bar">
					<input type="text" id="find_input" placeholder="请输入您要搜索的内容"
						style="font-size: 12px;">
				</div>
				<div id="find_but">
					<a id="likego"><img src="img/zoom.jpg"></a>
				</div>
			</div>

			<script type="text/javascript">
				var find_input = document.getElementById("find_input");
				var likego = document.getElementById("likego");
				likego.onclick = function() {
					var find_inputval = find_input.value;
					if (find_inputval == "") {
						alert("请输入您要搜索的内容")
					} else {
						likego.href = "find.do?method=findbylike&like="
								+ find_inputval;
					}
				}
			</script>



		</div>

		<div class="cang" onmouseover="go(0)" onmouseout="leave(0)">
			<div class="top_cang">
				<div class="all_goods">
					<a href="#" style="color: black;">全部手机&gt;</a>
				</div>
				<div class="types">
					<ul class>
						<li><a href="find.do?method=findbysmall_type&small_type=荣耀 ">荣耀</a></li>
						<li><a
							href="find.do?method=findbysmall_type&small_type=HUAWEI P系列">HUAWEI
								P系列</a></li>
						<li><a
							href="find.do?method=findbysmall_type&small_type=荣耀畅玩系列">荣耀畅玩系列</a></li>
						<li><a
							href="find.do?method=findbysmall_type&small_type=HUAWEI Mate系列">HUAWEI
								Mate系列</a></li>
						<li><a
							href="find.do?method=findbysmall_type&small_type=HUAWEI Nova系列">HUAWEI
								Nova系列</a></li>
						<li><a
							href="find.do?method=findbysmall_type&small_type=HUAWEI 麦芒系列">HUAWEI
								麦芒系列</a></li>
						<li><a
							href="find.do?method=findbysmall_type&small_type=HUAWEI 畅享系列">HUAWEI
								畅享系列</a></li>
					</ul>
				</div>
			</div>

			<div class="bottom_cang">
				<ul>
					<li><a href="#" class="po">
							<p class="grid_img">
								<img src="img/nova3.jpg" />
							</p>
							<div class="grid_title">HUAWEI nova3</div>
							<p class="grid_price">暂无报价</p>
					</a></li>
					<li><a href="#" class="po">
							<p class="grid_img">
								<img src="img/honor_play.jpg" />
							</p>
							<div class="grid_title">荣耀Play</div>
							<p class="grid_price">￥1999</p>
					</a></li>
					<li><a href="#" class="po">
							<p class="grid_img">
								<img src="img/huaweip20.jpg" />
							</p>
							<div class="grid_title">HUAWEI P20</div>
							<p class="grid_price">￥3788</p>
					</a></li>
					<li><a href="#" class="po">
							<p class="grid_img">
								<img src="img/honor9i.jpg" />
							</p>
							<div class="grid_title">荣耀9i</div>
							<p class="grid_price">￥1399</p>
					</a></li>
					<li><a href="#" class="po">
							<p class="grid_img">
								<img src="img/honor10.jpg" />
							</p>
							<div class="grid_title">荣耀10</div>
							<p class="grid_price">￥2599</p>
					</a></li>
					<li><a href="#" class="po">
							<p class="grid_img">
								<img src="img/nova2s.jpg" />
							</p>
							<div class="grid_title">HUAWEI nova2s</div>
							<p class="grid_price">￥2399</p>
					</a></li>
					<li><a href="#" class="po">
							<p class="grid_img">
								<img src="img/huaweimate.jpg" />
							</p>
							<div class="grid_title">HUAWEI Mate 10 Pro</div>
							<p class="grid_price">￥4499</p>
					</a></li>
				</ul>
			</div>
		</div>

		<div class="cang" onmouseover="go(1)" onmouseout="leave(1)">
			<div class="top_cang">
				<div class="all_goods">
					<a href="#" style="color: black;">笔记本&平板&gt;</a>
				</div>
				<div class="types">
					<ul class>
						<li><a href="find.do?method=findbysmall_type&small_type=平板电脑">平板电脑</a></li>
						<li><a
							href="find.do?method=findbysmall_type&small_type=笔记本电脑">笔记本电脑</a></li>
						<li><a
							href="find.do?method=findbysmall_type&small_type=笔记本配件">笔记本配件</a></li>
					</ul>
				</div>
			</div>

			<div class="bottom_cang">
				<ul>
					<li><a href="#" class="po">
							<p class="grid_img">
								<img src="img/nbp2.jpg" />
							</p>
							<div class="grid_title">HUAWEI MateBook X Pro</div>
							<p class="grid_price">￥7988</p>
					</a></li>
					<li><a href="#" class="po">
							<p class="grid_img">
								<img src="img/nbp1.jpg" />
							</p>
							<div class="grid_title">荣耀MagicBook</div>
							<p class="grid_price">￥4899</p>
					</a></li>
					<li><a href="#" class="po">
							<p class="grid_img">
								<img src="img/nbp3.jpg" />
							</p>
							<div class="grid_title">HUAWEI MateBook E</div>
							<p class="grid_price">￥6888</p>
					</a></li>
					<li><a href="#" class="po">
							<p class="grid_img">
								<img src="img/part1.jpg" />
							</p>
							<div class="grid_title">HUAWEI 背包</div>
							<p class="grid_price">￥199</p>
					</a></li>
					<li><a href="#" class="po">
							<p class="grid_img">
								<img src="img/part2.jpg" />
							</p>
							<div class="grid_title">荣耀蓝牙鼠标</div>
							<p class="grid_price">￥179</p>
					</a></li>
					<li><a href="#" class="po">
							<p class="grid_img">
								<img src="img/tbp1.jpg" />
							</p>
							<div class="grid_title">华为平板 M5 Pro</div>
							<p class="grid_price">￥3488</p>
					</a></li>
					<li><a href="#" class="po">
							<p class="grid_img">
								<img src="img/tbp2.jpg" />
							</p>
							<div class="grid_title">荣耀Waterplay</div>
							<p class="grid_price">￥1599</p>
					</a></li>
				</ul>
			</div>
		</div>


		<div class="cang" onmouseover="go(2)" onmouseout="leave(2)">
			<div class="top_cang">
				<div class="all_goods">
					<a href="#" style="color: black;">智能穿戴&gt;</a>
				</div>
				<div class="types">
					<ul class>
						<li><a href="find.do?method=findbysmall_type&small_type=手环">手环</a></li>
						<li><a href="find.do?method=findbysmall_type&small_type=手表">手表</a></li>
						<li><a href="find.do?method=findbysmall_type&small_type=VR">VR</a></li>
					</ul>
				</div>
			</div>

			<div class="bottom_cang">
				<ul>
					<li><a href="#" class="po">
							<p class="grid_img">
								<img src="img/ring1.jpg" />
							</p>
							<div class="grid_title">华为运动手环</div>
							<p class="grid_price">￥298</p>
					</a></li>
					<li><a href="#" class="po">
							<p class="grid_img">
								<img src="img/ring2.jpg" />
							</p>
							<div class="grid_title">华为手环 B5</div>
							<p class="grid_price">￥999</p>
					</a></li>
					<li><a href="#" class="po">
							<p class="grid_img">
								<img src="img/vr.jpg" />
							</p>
							<div class="grid_title">HUAWEI VR 2</div>
							<p class="grid_price">￥1999</p>
					</a></li>
					<li><a href="#" class="po">
							<p class="grid_img">
								<img src="img/watch1.jpg" />
							</p>
							<div class="grid_title">PORSCHE Smartwatch</div>
							<p class="grid_price">￥4988</p>
					</a></li>
					<li><a href="#" class="po">
							<p class="grid_img">
								<img src="img/ring3.jpg" />
							</p>
							<div class="grid_title">华为手环 B3</div>
							<p class="grid_price">￥999</p>
					</a></li>
					<li><a href="#" class="po">
							<p class="grid_img">
								<img src="img/watch2.jpg" />
							</p>
							<div class="grid_title">华为儿童手表</div>
							<p class="grid_price">￥688</p>
					</a></li>
					<li><a href="#" class="po">
							<p class="grid_img">
								<img src="img/watch3.jpg" />
							</p>
							<div class="grid_title">HUAWEI WATCH 2</div>
							<p class="grid_price">￥1688</p>
					</a></li>
				</ul>
			</div>
		</div>




	</div>
	<hr />
	<br />
	<div id="to_top">
		<a href="#"><img title="回到顶部" src="img/top.png"></a>
	</div>
	<div id="main_content">
		<!-- 主体div-->
		<div id="wrap_head">
			<!-- 头部di vwrap_head -->


			<div class="breadcrumb-area fcn">
				<a href="#" title="首页" style="text-decoration: none; color: black;">首页</a>&nbsp;>&nbsp;
				<a href='#' title='手机' style="text-decoration: none; color: black;">${list.big_type }</a>&nbsp;>&nbsp;
				<a href='#' title='荣耀' style="text-decoration: none; color: black;">${list.goods_type }</a>&nbsp;>&nbsp;
				&nbsp;&nbsp;&nbsp; <span id="goods_name">${list.goods_name}</span>
				&nbsp;&nbsp;&nbsp;<span id="pro_2">${list.goods_edition}</span> <span
					id="pro_1">${color[0].goods_color}</span>&nbsp;&nbsp;全网通
			</div>

			<div class="product clearfix">
				<div class="left">
					<!--start-商品图片 -->

					<div class="product-gallery-img" id="pic-container">
						<div id="content">
							<a title="放大图" href="${list.goods_pic}/1.jpg" id="most_big"
								class="jqzoom"> <img src="${list.goods_pic}/1.jpg"
								id="big_pic" title="大图">
							</a>

						</div>
					</div>
					<div id="pic_detail">
						<img src="img/pre.png" id="pre" style="margin-left: 15px;" />
						<div class="product-gallery-thumbs" id="pic_list">
							<ul id="pro_gallerys">
								<li class="current"><a href="javascript:;"><img
										src="${list.goods_pic}/1.jpg" class="r_small" alt="荣耀Play" /></a></li>
								<li><a href="javascript:;"><img
										src="${list.goods_pic}/2.jpg" class="r_small" alt="荣耀Play" /></a></li>
								<li><a href="javascript:;"><img
										src="${list.goods_pic}/3.jpg" class="r_small" alt="荣耀Play" /></a></li>
								<li><a href="javascript:;"><img
										src="${list.goods_pic}/4.jpg" class="r_small" alt="荣耀Play" /></a></li>
								<li><a href="javascript:;"><img
										src="${list.goods_pic}/5.jpg" class="r_small" alt="荣耀Play" /></a></li>
								<li><a href="javascript:;"><img
										src="${list.goods_pic}/6.jpg" class="r_small" alt="荣耀Play" /></a></li>

							</ul>
						</div>
						<img src="img/next.png" id="next" />
					</div>
				</div>
				<!-- 商品图片  -end--->
			</div>

			<div class="product-property">
				<div id="product-property-recommand">
					<!-- 20170518-商品简介-商品信息-start -->
					<div class="product-meta">
						<h1 id="pro-name" style="font-size:20px">
							${list.goods_name}&nbsp;&nbsp;<span id="pro_edition">${edition[0].goods_edition }</span>（<span
								id="pro_color">${color[0].goods_color}</span>）
						</h1>
						<br /> <br /> <a href="404.html" target="_blank"
							id="pic_discription" style="font-size: 14px;color: #ca141d;">
							【赠价值79元荣耀半入耳式耳机】“很吓人的技术”--GPU Turbo</a>
					</div>

				</div>

				<div id="price_product">
					&nbsp;&nbsp;&nbsp;价格：<span style="color: #ca141d; font-size: 24px;">￥</span><span
						id="price_number" style="color: #ca141d; font-size: 24px;">${list.goods_price }</span>
					<br /> <br /> &nbsp;&nbsp;&nbsp;原价： <span
						style="color: #ca141d;font-size: 20px;">￥</span><span
						id="pre_price" style="color: #ca141d;font-size: 20px;">${list.goods_price+list.discounts }</span><br />
					<br /> &nbsp;&nbsp;&nbsp;已优惠： <span
						style="color: #ca141d; font-size: 20px;">￥</span><span
						id="save_money" style="color: #ca141d; font-size: 20px;">${list.discounts }</span><br />
				</div>
				<div id="illustration">
					<span>已满48元以免运费</span>&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;由华为商城负责发货，并提供售后服务
					<br /> <br /> 商品编号： <span id="goodsid">${list.goods_id }</span>
				</div>

				<hr />
				<br />
				<div id="color_option_box">
					<span id="select_color" style="display:block">选择颜色
						&nbsp;&nbsp;</span>
					<div class="color_phone active_kind">
						<img
							src="${pageContext.request.contextPath}/${color[0].goods_pic}/1.jpg"
							class="color_pic"> <span class="color_name">${color[0].goods_color}</span>
					</div>
					<div class="color_phone" style="display:block">
						<img
							src="${pageContext.request.contextPath}/${color[1].goods_pic}/1.jpg"
							class="color_pic"> <span class="color_name">${color[1].goods_color}</span>
					</div>

					<div class="color_phone" id="last" style="display:block">
						<img
							src="${pageContext.request.contextPath}/${color[2].goods_pic}/1.jpg"
							class="color_pic" /> <span class="color_name">${color[2].goods_color}</span>
					</div>
					<!--  -->


					<script type="text/javascript">
						var size = ${color.size()};
						var color_phone = document
								.getElementsByClassName("color_phone");
						for (var i = size; i < 5; i++) {
							color_phone[i].style.display = "none";
						}
					</script>
					<div id="clear_float"></div>
					<!--清除浮动-->

				</div>


				<div id="edition_option_box">
					<span id="select_edition">选择版本 &nbsp;&nbsp;</span>

					<div class="edition_phone active_kind" style="display:block">

						全网通<a class="edition_name">${edition[0].goods_edition }</a>
					</div>
					<div class="edition_phone" style="display:block">

						全网通<a class="edition_name">${edition[1].goods_edition }</a>
					</div>
					<div class="edition_phone" style="display:block">

						全网通<a class="edition_name">${edition[2].goods_edition }</a>
					</div>
					<div class="edition_phone" id="last" style="display:block">

						全网通<a class="edition_name">${edition[3].goods_edition }</a>
					</div>
					<div id="clear_float"></div>
					<!--清除浮动-->
					<script type="text/javascript">
						var size = ${edition.size()};
						var edition_phone = document
								.getElementsByClassName("edition_phone");
						for (var i = size; i < 6; i++) {
							edition_phone[i].style.display = "none";
						}
					</script>

				</div>

				<div id="kind_option_box">
					<span id="select_kind">选择套餐 &nbsp;&nbsp;</span>

					<div class="kind_phone active_kind">

						<a class="kind_name">官方标配</a>
					</div>
					<div class="kind_phone">

						<a class="kind_name">套餐一</a>
					</div>
					<div class="kind_phone">

						<a class="kind_name">套餐二</a>
					</div>
					<div id="clear_float"></div>
					<!--清除浮动-->

				</div>

				<div id="fix_div">
					<span>保障服务</span>
					<div class="dropdown">
						<div id="dropbtn"
							style="font:12px/1.5 Arial, Helvetica, sans-serif;">
							<span style="font:12px/1.5 Arial, Helvetica, sans-serif;">碎屏服务宝一年&nbsp;￥129</span>
						</div>
						<div class="dropdown-content">
							<div id="dropdown-content_div">
								<input type="checkBox" name="statement" id="11"
									onclick="selectCheckOne(this)" value="碎屏服务保一年 &nbsp;￥129">碎屏服务宝一年
								&nbsp;￥129
							</div>
							<div id="dropdown-content_div">
								<input type="checkBox" name="statement" id="22"
									onclick="selectCheckOne(this)" value="碎屏服务保二年 &nbsp;￥229">碎屏服务宝二年
								&nbsp;￥229
							</div>
							<div id="dropdown-content_div">
								<input type="checkBox" name="statement" id="33"
									onclick="selectCheckOne(this)" value="碎屏服务保三年 &nbsp;￥329">碎屏服务宝三年
								&nbsp;￥329
							</div>
						</div>
					</div>
				</div>

				<div id="selected_goods">
					<span id="selected_goods_span">已选择商品 &nbsp;&nbsp;</span>
					<div id="selected_goods_content">
						<span id="color_" style="color: red;">极光蓝</span><span> /</span> <span
							id="edition_" style="color: red;">全网通 4GB+64GB </span><span>
							/</span> <span id="taocan_" style="color: red;"> 官方标配</span>
					</div>
					<div id="clear_float"></div>
					<!--清除浮动-->
				</div>

				<div id="add_number">
					<input id="pro_quantity" type="text" placeholder="1" value="1">
					<div id="number_caculate">
						<a id="pro_quantity_plus" href="javascript:;">+</a> <a
							id="pro_quantity_minus" href="javascript:;" class="">−</a>
					</div>
				</div>
				<div id="gouwuche">

					<div id="product_button01" style="background-position-y: 8px;">
						<span>加入购物车</span></a>
					</div>
					<a href="华为收银台.html" id="product_button02"
						style="background-position-y: 8px;"><span>立即下单</span></a>
				</div>


				<div id="hidden_gouwu">
					<span id="cancel" title="关闭">×</span>
					<div id="succcess_pic">
						<img src="img/success.png" />
					</div>
					<div id="hidden_kind_div">
						<p>
							<span id="hidden_kind" style="font-size: 12px;">荣耀Play 全网通
								4GB+64GB(极光蓝)</span>
						</p>
						<span style=" font-size: 18px;color: #7abd54;">成功加入购物车</span>
					</div>
					<div id="hidden_jiesuan">
						<a href="car.do?method=showcar&phone_num=${phone_num}"
							id="hidden_a_jiesuan">商品结算</a> <a href="javascript:;"
							id="not_jiesuan">继续逛逛>></a>
					</div>
				</div>





			</div>

		</div>
		<!--
                  	头部div wrap_head
                  -->


		<div id="clear_float"></div>
		<!--清除浮动-->

		<br /> <br />
		<hr />
		<div id="link-goods">
			<h2 class="product-title01">关联商品</h2>

		</div>
		<div class="wc1200 row rowE">
			<div class="bd mt20" style="margin: 10px;">
				<div id="sca1" class="warp-pic-list">
					<div id="wrapBox1" class="wrapBox">
						<ul id="count1" class="count clearfix">
							<li><a href="#2685" class="img_wrap"> <img
									src="img/142_142_1511858796676mp.jpg" border="0"></a> <span>热门配件
									荣耀 10000mAh </span>
								<p></p> <span style="color: red;margin-left: 40px;">￥1000.00</span>

							</li>
							<li><a href="" class="img_wrap"> <img
									src="img/142_142_1513827604555mp.jpg" border="0"></a> <span>热门配件
									荣耀 10000mAh </span>
								<p></p> <span style="color: red;margin-left: 40px;">￥1000.00</span></li>
							<li><a href="" class="img_wrap"> <img
									src="img/142_142_1523952379540mp.jpg" border="0"></a> <span>热门配件
									荣耀 10000mAh </span>
								<p></p> <span style="color: red;margin-left: 40px;">￥1000.00</span></li>
							<li><a href="" class="img_wrap"> <img src="img/142_142_1513827604555mp.jpg"
									border="0"></a> <span>热门配件 荣耀 10000mAh </span>
								<p></p> <span style="color: red;margin-left: 40px;">￥1000.00</span></li>
							<li><a href="" class="img_wrap"> <img
									src="img/142_142_1524125706599mp.jpg" border="0"></a> <span>热门配件
									荣耀 10000mAh </span>
								<p></p> <span style="color: red;margin-left: 40px;">￥1000.00</span></li>
							<li><a href="#2685" class="img_wrap"> <img
									src="img/142_142_1527674571952mp.jpg" border="0"></a> <span>热门配件
									荣耀 10000mAh </span>
								<p></p> <span style="color: red;margin-left: 40px;">￥1000.00</span></li>
							<li><a href="" class="img_wrap"> <img
									src="img/142_142_1527674756088mp.jpg" border="0"></a> <span>热门配件
									荣耀 10000mAh </span>
								<p></p> <span style="color: red;margin-left: 40px;">￥1000.00</span></li>
							<li><a href="" class="img_wrap"> <img
									src="img/142_142_1524125706599mp.jpg" border="0"></a> <span>热门配件
									荣耀 10000mAh </span>
								<p></p> <span style="color: red;margin-left: 40px;">￥1000.00</span></li>
							<li><a href="" class="img_wrap"> <img
									src="img/142_142_1527674756088mp.jpg" border="0"></a> <span>热门配件
									荣耀 10000mAh </span>
								<p></p> <span style="color: red;margin-left: 40px;">￥1000.00</span></li>
							<li><a href="" class="img_wrap"> <img
									src="img/142_142_1527674756088mp.jpg" border="0"></a> <span>热门配件
									荣耀 10000mAh </span>
								<p></p> <span style="color: red;margin-left: 40px;">￥1000.00</span></li>

						</ul>

					</div>
					<a id="right1" class="prev icon btn"></a> <a id="left1"
						class="next icon btn"></a>
				</div>
			</div>
		</div>
		<div id="clear_float_001"></div>
		<!--清除浮动-->

		<br /> <br /> <br /> <br />
		<hr />
		<br /> <br /> <br />
		<div class="product-box">
			<div class="nav-height" id="navHeight">
				<nav class="nav-box" id="nav-box">

					<ul class="clearfix">

						<li><a class="active" href="#section1">商品详情</a></li>
						<li><a class="" href="#section2">规格参数</a></li>
						<li><a class="" href="#section3">包装</a></li>
						<li><a class="" href="#section4">用户评论</a></li>
						<li><input type="button" value="加入购物车"
							id="clearfix_buy_button"></li>
					</ul>
				</nav>
			</div>
			<div id="section1" name='section1' class="section-content xsj xsj1">
				<div class="product-tit">
					<br /> <br />
					<h3>商品详情</h3>
					<br /> <br />

				</div>
				<ul class="product-list clear" style=" width: 100%;">
					<img src="${detailpic.detail}/0.jpg" style=" width: 100%;" />
					<img src="${detailpic.detail}/1.jpg" style=" width: 100%;" />
					<img src="${detailpic.detail}/2.jpg" style=" width: 100%;" />
					<img src="${detailpic.detail}/3.jpg" style=" width: 100%;" />
					<img src="${detailpic.detail}/2.jpg" style=" width: 100%;" />
				</ul>


			</div>
			<div id="section2" class="section-content xsj">
				<div class="product-tit">
					<br /> <br />
					<h3>规格与参数</h3>
					<br /> <br />
				</div>
				<ul class="product-list clear"
					style="background:rgb(245,245,245) ;width: 100%;"">
					<img src="img/detail1.png" style=" width: 1339px;" />
					<img src="img/detail2.png" style=" width: 1339px;" />
					<img src="img/detail3.png" style="width: 1339px;" />
					<img src="img/detail4.png" style=" width: 1339px;" />
					<img src="img/detail5.png" style=" width: 1339px;" />
					<img src="img/detail6.png" style="width: 1339px;" />
					<img src="img/detail7.png" style=" width: 1339px;" />
					<img src="img/detail8.png" style=" width: 1339px;" />

				</ul>
			</div>
			<div id="section3" class="section-content xsj">
				<div class="product-tit">
					<br /> <br />
					<h3>包装</h3>
					<br /> <br />
					<hr />
				</div>
				<ul class="product-list clear" style="width: 100%;"">
					<img src="img/detail9.png" />
				</ul>
			</div>
			<div id="section4" class="section-content xsj">
				<div class="product-tit">
					<br /> <br />
					<h3>用户评论</h3>
					<br /> <br />
				</div>
				<div style="width: 100%;height: 60px;margin-top:20px">
					<h2 style="color: #a4a4a4;">热门评论</h2>
				</div>
				<ul id="product_listee" style="width:1200px">
					<li style="height:250px;border-bottom: solid 1px #a4a4a4;">
						<div class="touxiang">
							<img src="img/touxiang.png"
								style="height: 104px;width: 104px;display: block;" /> <span
								class="username">15678632144</span>
						</div>


						<div>
							<div style="float: left;margin-left: 20px;">
								<img src="img/judge_rank.png" />
							</div>

							<br /> <br />

							<div style="float: left; margin-left: 30px;">
								<span class="judge_content">全家一直是华为的老客户，对它非常信赖。这次给丈母娘购买，老人很开心。机子很顺畅!</span>
							</div>
							<br />
							<div class="judge_pic">
								<img src="img/019.gif" /> <img src="img/019.gif" /> <img
									src="img/019.gif" />
								<div class="time" style="width:180px">2018-8-15 24:00:00</div>
							</div>
						</div>
						<div style="clear: both;"></div>

					</li>

				</ul>

			</div>

			<img src="img/bottom.png" style="margin-top: 40px;margin-left:2px">

		</div>


	</div>
	<!--main的div-->

</body>


<script type="text/javascript">
	onload = function() {
		var json = "";
		var request = new XMLHttpRequest();

		//回调函数
		request.onreadystatechange = function() {

			if (request.readyState == 4 && request.status == 200) {
				var ret = request.responseText;
				json = eval(ret);
				//alert(ret);

			}
		}

		request.open("get",
				"JudgeServlet.do?method=findusername&goodsname=huawei", false);
		request.send(null);
		//alert(json);
		//alert(json.length);
		var inner = "";

		for (var i = 0; i < json.length; i++) {
			var request = new XMLHttpRequest();
			//回调函数
			request.onreadystatechange = function() {
				if (request.readyState == 4 && request.status == 200) {
					var ret2 = request.responseText;
					var json2 = eval(ret2);
					// alert(ret2);

					var img = "";
					inner = "<li style='height:250px;border-bottom: solid 1px #a4a4a4;'> <div style='margin-top:20px;' class='touxiang'><img src='img/touxiang.png' style='height: 104px;width: 104px;display: block;' /> <span class='username'>"
							+ json2[0].phone_num
							+ "</span></div><div><div style='float: left;margin-left: 20px;'><img style='margin-top:20px;' src='img/judge_rank.png' /></div><br /><br /><br /><div style='float: left; margin-left: 30px;'><span  class='judge_content'>"
							+ json2[0].judge_words
							+ "</span></div><br /><div  class='judge_pic'>";
					for (var j = 0; j < json2.length; j++) {

						img = img
								+ "<img src='judgeimg/"+json2[j].judge_pic+"' /> ";
					}

					inner = inner
							+ img
							+ "<br /><div style='margin-top:20px;width:180px' class='time'>"
							+ json2[0].judge_time
							+ "</div></div></div><div style='clear: both;'></div></li>";

					var ul = document.getElementById("product_listee");
					ul.innerHTML = ul.innerHTML + inner;

				}
			}

			request.open("get",
					"JudgeServlet.do?method=userjudge&goodsname=huawei&phone_num="
							+ json[i].phone_num, false);
			request.send(null);

		}

		//alert(document.body.offsetHeight);

		var login = document.getElementById("login");
		var register = document.getElementById("register");
		var phone = "${phone_num}";

		if (phone != "") {

			login.style.display = "none";
			register.innerHTML = "用户  : " + phone;
		}

		var sumc = 0;
		var pro_quantity = document.getElementsByClassName("pro_quantity");
		for (var i = 0; i < pro_quantity.length; i++) {
			sumc = parseInt(sumc) + parseInt(pro_quantity[i].innerHTML);
		}

		document.getElementById("goods_num").innerHTML = sumc;

	}
</script>

<script type="text/javascript">
	var most_big = document.getElementById("most_big");
	var big_pic = document.getElementById("big_pic");
	var imgs = document.getElementsByClassName("r_small");
	var color_phone = document.getElementsByClassName("color_phone");

	for (var i = 0; i < imgs.length; i++) {
		imgs[i].onmouseover = function() {
			big_pic.src = this.src;
			most_big.href = this.src;
		}
	}

	var color_pic = document.getElementsByClassName("color_pic");

	color_pic[0].onclick = function() {

		var a = "${color[0].goods_pic}";
		for (var k = 1; k < 7; k++) {
			var h = a + "/" + k + ".jpg";
			imgs[k - 1].src = h;

		}
		big_pic.src = this.src;
		most_big.href = this.src;
	}

	color_pic[1].onclick = function() {

		var a1 = "${color[1].goods_pic}";
		for (var k = 1; k < 7; k++) {
			var h = a1 + "/" + k + ".jpg";
			imgs[k - 1].src = h;

		}
		big_pic.src = this.src;
		most_big.href = this.src;
	}
	color_pic[2].onclick = function() {

		var a2 = "${color[2].goods_pic}";
		for (var k = 1; k < 7; k++) {
			var h = a2 + "/" + k + ".jpg";
			imgs[k - 1].src = h;

		}
		big_pic.src = this.src;
		most_big.href = this.src;
	}

	function selectCheckOne(obj) {
		var checks = document.getElementsByName("statement");
		var dropbtn = document.getElementById("dropbtn");

		if (obj.checked) {
			for (var i = 0; i < checks.length; i++) {
				checks[i].checked = false;
			}
			obj.checked = true;
		} else {
			for (var i = 0; i < checks.length; i++) {
				checks[i].checked = false;
			}
		}
		for (var i = 0; i < checks.length; i++) {
			if (checks[i].checked == true) {
				dropbtn.innerHTML = checks[i].value;
			}

		}

	}
	//		$("#product_button01").click(function() {
	//
	//			var txt = "已成功添加进购物车";
	//			window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.success);
	//
	//		});

	$(function() {

		var options2 =

		{

			zoomWidth : 400,

			zoomHeight : 400,

			zoomType : 'reverse'

		}

		$(".jqzoom").jqzoom(options2);

	});
</script>
<script>
	var pic_left = document.getElementById("pre");
	var pic_list = document.getElementById("pro_gallerys");
	var pic_list_box = document.getElementById("pic_list");
	var pic_right = document.getElementById("next");
	var li_pic = pic_list.getElementsByTagName("li");

	pic_left.onclick = function() {
		pic_list.style.marginLeft = '-75px';
	}
	pic_right.onclick = function() {
		pic_list.style.marginLeft = '0px';
	}

	var pro_quantity = document.getElementById("pro_quantity");
	var goods_count = pro_quantity.value;
	var pro_quantity_plus = document.getElementById("pro_quantity_plus");
	var pro_quantity_minus = document.getElementById("pro_quantity_minus");
	pro_quantity_plus.onclick = function() {
		pro_quantity.value = parseInt(pro_quantity.value) + 1;
		goods_count = parseInt(pro_quantity.value);
	}
	pro_quantity_minus.onclick = function() {
		if (parseInt(pro_quantity.value) == 1) {
			pro_quantity.value = 2;
			goods_count = parseInt(pro_quantity.value);
		}
		pro_quantity.value = parseInt(pro_quantity.value) - 1;
		goods_count = parseInt(pro_quantity.value);

	}

	var color_name = document.getElementsByClassName("color_name");

	var color_phone = document.getElementsByClassName("color_phone");

	var edition_phone = document.getElementsByClassName("edition_phone");
	var kind_phone = document.getElementsByClassName("kind_phone");

	var color_ = document.getElementById("color_");
	var edition_ = document.getElementById("edition_");

	var taocan_ = document.getElementById("taocan_");
	var edition_name = document.getElementsByClassName("edition_name");
	var pro_1 = document.getElementById("pro_1");
	var pro_2 = document.getElementById("pro_2");
	var goods_edition = pro_2.innerHTML;
	var goods_color = pro_1.innerHTML
	var pro_edition = document.getElementById("pro_edition");
	var pro_color = document.getElementById("pro_color");

	for (var i = 0; i < color_phone.length; i++) {
		color_phone[i].onclick = function() {

			for (var x = 0; x < color_phone.length; x++) {
				color_phone[x].className = "color_phone";

				pro_1.innerHTML = $(this).children("span").eq(0).text();

				color_.innerHTML = pro_1.innerHTML;

				goods_color = $(this).children("span").eq(0).text();
				pro_color.innerHTML = $(this).children("span").eq(0).text();

			}

			this.className = "color_phone active_kind";

		}

	}
	var goodsname = "${list.goods_name}";
	var price_number = document.getElementById("price_number");
	var save_money = document.getElementById("save_money");
	var pre_price = document.getElementById("pre_price");
	var goodsid = document.getElementById("goodsid");
	var json = "";
	//for(var i = 0 ;i<edition_phone.length;i++ ){

	edition_phone[0].onclick = function() {

		for (var i = 0; i < edition_phone.length; i++) {
			edition_phone[i].className = "edition_phone";

			edition_.innerHTML = $(this).children("a").eq(0).text();

			pro_2.innerHTML = $(this).children("a").eq(0).text();

			goods_edition = pro_2.innerHTML;

			pro_edition.innerHTML = $(this).children("a").eq(0).text();

		}

		this.className = "edition_phone active_kind";

		var request = new XMLHttpRequest();
		request.open("get", "EditionServlet.do?method=findEdition&goodsname="
				+ goodsname);
		request.send(null);

		request.onreadystatechange = function() {
			if (request.readyState == 4 && request.status == 200) {
				var ret = request.responseText;
				json = eval(ret);

				price_number.innerHTML = json[0].goodsprice;
				save_money.innerHTML = json[0].discounts;
				pre_price.innerHTML = parseInt(json[0].goodsprice)
						+ parseInt(json[0].discounts);
				goodsid.innerHTML = json[0].goodsid;

			}

		}

	}

	edition_phone[1].onclick = function() {

		for (var i = 0; i < edition_phone.length; i++) {
			edition_phone[i].className = "edition_phone";

			edition_.innerHTML = $(this).children("a").eq(0).text();

			pro_2.innerHTML = $(this).children("a").eq(0).text();

			goods_edition = pro_2.innerHTML;

			pro_edition.innerHTML = $(this).children("a").eq(0).text();

		}

		this.className = "edition_phone active_kind";

		var request = new XMLHttpRequest();
		request.open("get", "EditionServlet.do?method=findEdition&goodsname="
				+ goodsname);
		request.send(null);

		request.onreadystatechange = function() {
			if (request.readyState == 4 && request.status == 200) {
				var ret = request.responseText;
				json = eval(ret);

				price_number.innerHTML = json[1].goodsprice;
				save_money.innerHTML = json[1].discounts;
				pre_price.innerHTML = parseInt(json[1].goodsprice)
						+ parseInt(json[1].discounts);
				goodsid.innerHTML = json[1].goodsid;
			}

		}

	}
	edition_phone[2].onclick = function() {

		for (var i = 0; i < edition_phone.length; i++) {
			edition_phone[i].className = "edition_phone";

			edition_.innerHTML = $(this).children("a").eq(0).text();

			pro_2.innerHTML = $(this).children("a").eq(0).text();

			goods_edition = pro_2.innerHTML;

			pro_edition.innerHTML = $(this).children("a").eq(0).text();

		}

		this.className = "edition_phone active_kind";

		var request = new XMLHttpRequest();
		request.open("get", "EditionServlet.do?method=findEdition&goodsname="
				+ goodsname);
		request.send(null);

		request.onreadystatechange = function() {
			if (request.readyState == 4 && request.status == 200) {
				var ret = request.responseText;
				json = eval(ret);

				price_number.innerHTML = json[2].goodsprice;
				pre_price.innerHTML = parseInt(json[2].goodsprice)
						+ parseInt(json[2].discounts);
				goodsid.innerHTML = json[2].goodsid;
			}

		}

	}
	edition_phone[3].onclick = function() {

		for (var i = 0; i < edition_phone.length; i++) {
			edition_phone[i].className = "edition_phone";

			edition_.innerHTML = $(this).children("a").eq(0).text();

			pro_2.innerHTML = $(this).children("a").eq(0).text();
			goods_edition = $(this).children("a").eq(0).text();

			pro_edition.innerHTML = $(this).children("a").eq(0).text();

		}

		this.className = "edition_phone active_kind";

		var request = new XMLHttpRequest();
		request.open("get", "EditionServlet.do?method=findEdition&goodsname="
				+ goodsname);
		request.send(null);

		request.onreadystatechange = function() {
			if (request.readyState == 4 && request.status == 200) {
				var ret = request.responseText;
				json = eval(ret);

				price_number.innerHTML = json[3].goodsprice;
				pre_price.innerHTML = parseInt(json[3].goodsprice)
						+ parseInt(json[3].discounts);
				goodsid.innerHTML = json[3].goodsid;
			}

		}

	}

	kind_phone[0].onclick = function() {

		for (var i = 0; i < kind_phone.length; i++) {
			kind_phone[i].className = "kind_phone";
			taocan_.innerHTML = $(this).children("a").eq(0).text();

		}

		this.className = "kind_phone active_kind";

	}
	var edition_option_box = document.getElementById("edition_option_box");

	kind_phone[1].onclick = function() {

		for (var i = 0; i < kind_phone.length; i++) {
			kind_phone[i].className = "kind_phone";
			taocan_.innerHTML = $(this).children("a").eq(0).text();

		}

		this.className = "kind_phone active_kind";

	}

	var cancel = document.getElementById("cancel");
	var goods_name = document.getElementById("goods_name").innerHTML;
	var hidden_gouwu = document.getElementById("hidden_gouwu");
	var product_button01 = document.getElementById("product_button01");
	var not_jiesuan = document.getElementById("not_jiesuan");
	not_jiesuan.onclick = function() {
		hidden_gouwu.style.display = "none";

	}
	product_button01.onclick = function() {
		hidden_gouwu.style.display = "block";

		if (${phone_num!=null}) {

			alert(goods_edition);
			alert(goods_count);
			alert(goods_name);
			alert(goods_color);

			var request = new XMLHttpRequest();
			request.open("get", "car.do?method=addCar&num=" + goods_count
					+ "&phone_num=${phone_num}&goods_name=" + goods_name
					+ "&goods_edition=" + goods_edition + "&goods_color="
					+ goods_color, false);
			request.send(null);
			request.onreadystatechange = function() {
				if (request.readyState == 4 && request.status == 200) {

				}

			}

		}

		else {
			location.href = "login.jsp";
		}

	}
	cancel.onclick = function() {
		hidden_gouwu.style.display = "none";

	}

	var pro_gallerys = document.getElementById("pro_gallerys");
	var pro_gallerys_li = pro_gallerys.getElementsByTagName("li");
	for (var i = 0; i < pro_gallerys_li.length; i++) {
		pro_gallerys_li[i].index = i;
		pro_gallerys_li[i].onmousemove = function() {
			for (var i = 0; i < pro_gallerys_li.length; i++) {
				pro_gallerys_li[i].className = "";

			}
			this.className = "current";

		}
	}
	var dg = document.getElementById("head_car");

	function showhd() {
		var x = document.getElementById("car_content");
		x.style.display = "block";
		dg.style.boxShadow = "darkgrey 0px 0px 4px 0.5px";
	}

	function hd() {
		var x = document.getElementById("car_content");
		x.style.display = "none";
		dg.style.boxShadow = "";
	}
	function getSum() {

		var cai = document.getElementsByName("cai");
		var jg = document.querySelectorAll(".per_price");
		var num = document.getElementsByClassName("pro_quantity");
		var sum = 0; //表示总价格
		var count = 0;
		for (var i = 0; i < cai.length; i++) {
			if (cai[i].checked) {
				sum = sum + 1 * jg[i].innerHTML;

				count = count + 1 * num[i].innerHTML;
			}
		}

		document.getElementById("money").innerHTML = sum;
		document.getElementById("total_num").innerHTML = count;
	}
	function quanxuan() {
		var all = document.getElementById("check");
		var cai = document.getElementsByName("cai");
		for (var i = 0; i < cai.length; i++) {
			cai[i].checked = all.checked;
		}

		getSum();
	}
	function selectOne() {
		var f = true;
		var all = document.getElementById("check");
		var cai = document.getElementsByName("cai");
		for (var i = 0; i < cai.length; i++) {
			if (cai[i].checked != f) {
				all.checked = false;
				break;
			}
			all.checked = f;
		}

	}
</script>

</html>