<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

	<head lang="en">
		<meta charset="UTF-8">
		<title>华为商城（VMALL.COM）_华为手机、荣耀手机、官网正品保障</title>
		<link rel="stylesheet" href="css/sy.css" />
		<link rel="stylesheet" href="css/style_first.css" />
		
		<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
		<!--<script src="js/jquery.animate-colors-min.js"></script>-->
		<script src='js/scroll.1.3.js' type="text/javascript"></script>
		<!--左右轮播js -->
		<script type="text/javascript" src='js/main.js'></script>
		
	</head>

	<body>
		<div class="head_box">
			<div id="head_wrap">
				<div id="head_nav">
					<a class="head_nav_a" href="homepage.jsp"  >首页</a>
					<span style="color: #b0b0b0;">|</span>
					<a class="head_nav_a" >华为官网</a>
					<span style="color: #b0b0b0;">|</span>
					<a class="head_nav_a">荣耀官网</a>
					<span style="color: #b0b0b0;">|</span>
					<a class="head_nav_a">花粉俱乐部</a>
					<span style="color: #b0b0b0;">|</span>
					<a class="head_nav_a">帮助中心</a>
					<span style="color: #b0b0b0;">|</span>
					<a class="head_nav_a">V码(优购码)</a>
					<span style="color: #b0b0b0;">|</span>
					<a class="head_nav_a">企业购</a>
					<span style="color: #b0b0b0;">|</span>
					<a class="head_nav_a">Select Region</a>
				</div>

				<div id="head_right">
					<div id="head_landing">
						<a class="head_nav_a" id="login" href="login.jsp">请登录</a>
						&nbsp;&nbsp;
						<a class="head_nav_a" id="register">注册</a>
						&nbsp;
						<span style="color: #b0b0b0;">|</span> &nbsp;
						<a class="head_nav_a">我的订单</a>
					</div>
					<div id="head_car">
						<img src="img/pic-car_1.png" />
						<a class="head_car_text" onmouseover="showhd()" onmouseout="hd()">购物车(<span id="goods_num"></span>)</a>
						<div id="car_content" onmouseover="showhd()" onmouseout="hd()">
						
						
					<c:if test="${empty phone_num}">
					
					<a style="text-align=center;text-decoration:none;margin-top:50%" href="login.jsp">请先登录！</a>
					
					</c:if>
					<c:if test="${!empty phone_num}">
						<c:if test="${empty carxs}">
						<img  src="img/kongkong.png" width="440px" height="230px">
						</c:if>
						<c:if test="${!empty carxs}">
						<c:forEach items="${carxs}" var="entry">
             <form action="" method="get">
				<div class="sc_list_001">
					<input type="checkbox" name="cai" onclick="getSum();selectOne()" class="select_goods" />
					<img src="${pageContext.request.contextPath}/${entry.goods_pic}/1.jpg" class="pic_001"/>
					<ul class="clearfix_1">
						<li class="li_11" ><span class="gn" id="gn${entry.goods_id}">${entry.goods_name}</span>
						<span class="ge" id="ge${entry.goods_id}">${entry.goods_edition}</span>
						<span class="gc" id="gc${entry.goods_id}">${entry.goods_color}</span>
						<li class="li_22">￥<span class="price_per" id="jg${entry.goods_id}">${entry.goods_price}</span><span>&nbsp;&nbsp;x</span> 
						<li class="li_33">
							<div class="add_number">
						
								<span  class="pro_quantity"  id="num${entry.goods_id}">${entry.goods_num }</span>
                            </div>
						
						<li class="li_44">￥<span  class="per_price"  style="color: red;" id="smalltotal${entry.goods_id}">${entry.goods_num*entry.goods_price-entry.discounts}
					</span ><span style="color: red;"></span>
						</ul>
			</div>
			</form>
         </c:forEach>
					<div class="sc_total_tool ">
				<div class="sc_checkbox" style="float: left;">
					<input type="checkbox" class="check" id="check" onclick="quanxuan()" style="	height:12px;width:12px;"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;全选
				</div> 
					<div class="sc_total_btn ">
					<a href="ensureorder.jsp">立即结算</a>
				</div>
				<div class="sc_total_price" >
					<label>总计：</label> <span class="finall_price">¥&nbsp; <span class="money" id="money">0.00</span></span>
					<div class="total_choose">已选择
						<span class="total_num" id="total_num" style="font-weight: bold;color: #ca151e;">0</span>件商品
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
		<div id="main_head_box" style="z-index: 3;">
			<div id="menu_wrap">
				<div id="menu_logo">
					<img src="img/logomain.png">
				</div>
				<div id="menu_nav">
					<ul id="menu_ul">
						<li>
							<a href="find.do?method=findbysmall_type&small_type=HUAWEI Mate系列" style="color:#3a3a3a"; class="">mate专区</a>
						</li>
						<li>
							<a href="find.do?method=findbysmall_type&small_type=荣耀" style="color:#3a3a3a"; class="">荣耀专区</a>
						</li>
						<li>
							<a target="_blank" href="GoodsServlet.do?goodsname=HUAWEI P20&method=goodsdetail&method2=goodsdetailpic" style="color:#3a3a3a"; >华为P20</a>
						</li>

						<li>
							<a target="_blank" href="GoodsServlet.do?goodsname=荣耀V10&method=goodsdetail&method2=goodsdetailpic" style="color:#3a3a3a"; >荣耀V10</a>
						</li>
						<li>
							<a target="_blank" href="GoodsServlet.do?goodsname=HUAWEI nova 3&method=goodsdetail&method2=goodsdetailpic" style="color:#3a3a3a"; >nova3</a>
						</li>
						<li>
							<a target="_blank" href="GoodsServlet.do?goodsname=荣耀10&method=goodsdetail&method2=goodsdetailpic" style="color:#3a3a3a"; >荣耀10</a>
						</li>

					</ul>
				</div>
				<div id="find_wrap">
					<div id="find_bar">
						<input type="text" id="find_input" placeholder="请输入您要搜索的内容" style="font-size: 16px;color:gray">
					</div>
					<div id="find_but"><a id = "likego"><img src="img/zoom.jpg" /></a></div>
				</div>
			</div>
		</div>

		<div id="big_banner_wrap">
			<div class="xs">
				<ul id="banner_menu_wrap">
					<li class="banner_li" >
						<div class="list">
							<a href="find.do?method=findbybig_type&amp;big_type=手机  "  target="_blank";>手机</a>
							<div id="llist">
								<a  href="find.do?method=findbysmall_type&small_type=荣耀" target="_blank";>荣耀</a>
								<a href="find.do?method=findbysmall_type&small_type=HUAWEI P系列"  target="_blank";>HUAWEI P系列</a>
								<a class="banner_menu_i">&gt;</a>
							</div>
						</div>
						<div class="banner_menu_content" id="show_1">
							<a class="banner_menu_text"></a>
							<div id="pd">
								<a id="banner_a" href="#" target="_blank" style="text-align: center">
									<span class="f1" style="text-align: center">手机浏览频道</span>
									<span class="f2" style="text-align: end;">&gt;</span>
								</a>
							</div>
							<div id="lj">
								<ul >
									<li><a href="find.do?method=findbysmall_type&small_type=荣耀" target="_blank";>荣耀</a></li>
									<li><a href="find.do?method=findbysmall_type&small_type=HUAWEI P系列" target="_blank";>HUAWEI P系列</a></li>
									<li><a href="find.do?method=findbysmall_type&small_type=荣耀畅玩系列" target="_blank";>荣耀畅玩系列</a></li>
									<li><a href="find.do?method=findbysmall_type&small_type=HUAWEI Mate系列" target="_blank";>HUAWEI Mate系列</a></li>
									<li><a href="find.do?method=findbysmall_type&small_type=HUAWEI Nova系列" target="_blank";>HUAWEI Nova系列</a></li>
									<li><a href="find.do?method=findbysmall_type&small_type=HUAWEI 麦芒系列" target="_blank";>HUAWEI 麦芒系列</a></li>
									<li><a href="find.do?method=findbysmall_type&small_type=华为畅享系列" target="_blank";>华为畅享系列</a></li>
									
								</ul>
							</div>
							<div id="jtsp">
								<ul>
									<li>
										<a target="_blank" href="GoodsServlet.do?goodsname=HUAWEI nova 3&method=goodsdetail&&method2=goodsdetailpic" ><img alt="荣耀" src="image/smp/nova/huawei_nova_3/blue/1.jpg" style="height:148px;width:148px;margin-top:20px;margin-left:8px"></a>
										<div style="margin-left: 50px;margin-top: 20px;">
											<a>HUAWEI nova 3</a><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;
											<a style="color: rgb(202,20,49);">¥2799</a>
										</div>
									</li>
									<li>
										<a target="_blank" href="GoodsServlet.do?goodsname=荣耀10&method=goodsdetail&&method2=goodsdetailpic" ><img alt="荣耀" src="image/smp/honor/honor10/black/1.jpg" style="height:148px;width:148px ;margin-top:20px;margin-left:8px"></a>
										<div style="margin-left: 50px;margin-top: 20px;">
											<a style="margin-left:18px">荣耀10</a><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;
											<a style="color: rgb(202,20,49);">¥2599</a>
										</div>
									</li>
									<li>
										<a target="_blank" href="GoodsServlet.do?goodsname=HUAWEI P20&method=goodsdetail&&method2=goodsdetailpic" ><img alt="荣耀" src="image/smp/p/huawei_p20/black/1.jpg" style="height:148px;width:148px;margin-top:20px;margin-left:8px"></a>
										<div style="margin-left: 50px;margin-top: 20px;">
											<a>HUAWEI P20</a><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;
											<a style="color: rgb(202,20,49);">¥3788</a>
										</div>
									</li>
									<li>
										<a target="_blank" href="GoodsServlet.do?goodsname=荣耀9i&method=goodsdetail&&method2=goodsdetailpic" ><img alt="荣耀" src="image/smp/honor/honor9i/black/1.jpg" style="height:148px;width:148px;margin-top:20px;margin-left:8px"></a>
										<div style="margin-left: 30px;margin-top: 20px;">
											<a style="margin-left:18px">荣耀9i</a><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;
											<a style="color: rgb(202,20,49);">¥4999</a>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</li>
					<li id="banner_li" style="color:darkgrey;" >
						<div class="list" style="color:darkgrey;">
							<a  href="find.do?method=findbybig_type&big_type=笔记本平板 " target="_blank" >笔记本 / 平板</a>
							<div id="llist">
								<a href="find.do?method=findbysmall_type&small_type=笔记本电脑" target="_blank">笔记本电脑</a>
								<a  href="find.do?method=findbysmall_type&small_type=平板电脑" target="_blank">平板电脑</a>
								<a class="banner_menu_i">&gt;</a>

							</div>
						</div>
						<div class="banner_menu_content" id="show_2">
							<a class="banner_menu_text"></a>
								<div id="pd">
								<a id="banner_a" href="#" target="_blank" style="text-align: center">
									<span class="f1" style="text-align: center">浏览笔记本 &nbsp;&&nbsp;浏览频道</span>
									<span class="f2" style="text-align: end;">&gt;</span>
								</a>
							</div>
							<div id="lj">
								<ul >
									<li><a>平板电脑</a></li>
									<li><a>笔记本配件</a></li>
									<li><a href="find.do?method=findbysmall_type&small_type=笔记本配件" target="_blank" >笔记本配件</a></li>
									<li></li>
									<li></li>
									<li></li>
									<li></li>
									<li></li>
								</ul>
							</div>
							<div id="jtsp">
								<ul>
									<li>
										<a target="_blank" href="GoodsServlet.do?goodsname=HUAWEI MateBook X Pro&method=goodsdetail&&method2=goodsdetailpic" ><img alt="荣耀" src="image/nbp&tbp/nbp/nbp_mate_x_pro/silver/1.jpg" style="height:148px;width:148px;margin-top:20px;margin-left:8px"></a>
										<div style="margin-left: 5px;margin-top: 20px;">
											<a>HUAWEI MateBook X Pro</a><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;
											<a style="color: rgb(202,20,49);margin-left:28px">¥4499</a>
										</div>
									</li>
									<li>
										<a target="_blank" href="GoodsServlet.do?goodsname=荣耀MagicBook&method=goodsdetail&&method2=goodsdetailpic" ><img alt="荣耀" src="image/nbp&tbp/nbp/honormagicbook/sliver/1.jpg" style="height:148px;width:148px;margin-top:20px;margin-left:8px"></a>
										<div style="margin-left: 40px;margin-top: 20px;">
											<a >荣耀MagicBook</a><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;
											<a style="color: rgb(202,20,49);margin-left:8px">¥3399</a>
										</div>
									</li>
									<li>
										<a target="_blank" href="GoodsServlet.do?goodsname=华为平板 M5 Pro&method=goodsdetail&&method2=goodsdetailpic" ><img alt="荣耀" src="image/nbp&tbp/tbp/tbp_m5_pro/gray/1.jpg" style="height:148px;width:148px;margin-top:20px;margin-left:8px"></a>
										<div style="margin-left: 35px;margin-top: 20px;">
											<a>华为平板 M5 Pro</a><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;
											<a style="color: rgb(202,20,49);margin-left:8px">¥3788</a>
										</div>
									</li>
									<li>
										<a target="_blank" href="GoodsServlet.do?goodsname=HUAWEI MateBook E&method=goodsdetail&&method2=goodsdetailpic" ><img alt="荣耀" src="image/nbp&tbp/nbp/huawei_matebook_e/gold/1.jpg" style="height:148px;width:148px;margin-top:20px;margin-left:8px"></a>
										<div style="margin-left: 10px;margin-top: 20px;">
											<a style="margin-left:8px">HUAWEI MateBook E</a><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;
											<a style="color: rgb(202,20,49);margin-left:28px">¥4899</a>
										</div>
									</li>
								</ul>
							</div>
							
						</div>
					</li>
					<li class="banner_li" style="color:darkgrey;" >
						<div class="list" style="color: darkgrey;">
							<a href="find.do?method=findbybig_type&amp;big_type=智能穿戴 ">智能穿戴</a>
							<div id="llist">
								<a href="find.do?method=findbysmall_type&small_type=手环" target="_blank">手环</a>
								<a href="find.do?method=findbysmall_type&small_type=手表" target="_blank">手表</a>
								<a href="find.do?method=findbysmall_type&small_type=VR" target="_blank">VR</a>
								<a class="banner_menu_i">&gt;</a>
							</div>
						</div>
						<div class="banner_menu_content" id="show_3">
							<a class="banner_menu_text"></a>
							<div id="pd">
								<a id="banner_a" href="#" target="_blank" style="text-align: center">
									<span class="f1" style="text-align: center">浏览只能穿戴频道</span>
									<span class="f2" style="text-align: end;">&gt;</span>
								</a>
							</div>
							<div id="lj">
								<ul >
									<li><a href="find.do?method=findbysmall_type&small_type=手环" target="_blank">手环</a></li>
									<li><a href="find.do?method=findbysmall_type&small_type=手表" target="_blank">手表</a></li>
									<li><a href="find.do?method=findbysmall_type&small_type=VR" target="_blank">VR</a></li>
									<li></li>
									<li></li>
									<li></li>
									<li></li>
									<li></li>
								</ul>
							</div>
							<div id="jtsp">
								<ul>
									<li>
										<a target="_blank" href="GoodsServlet.do?goodsname=华为手环 B5&method=goodsdetail&&method2=goodsdetailpic" ><img alt="荣耀" src="image/smw/ring/huaweiringb5/black/1.jpg" style="height:148px;width:148px;margin-top:20px;margin-left:8px"></a>
										<div style="margin-left: 50px;margin-top: 20px;">
											<a>华为手环 B5</a><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;
											<a style="color: rgb(202,20,49);">¥999</a>
										</div>
									</li>
									<li>
										<a target="_blank" href="GoodsServlet.do?goodsname=华为手环 B3&method=goodsdetail&&method2=goodsdetailpic" ><img alt="荣耀" src="image/smw/ring/huaweiringb3/black/1.jpg" style="height:148px;width:148px ;margin-top:20px;margin-left:8px"></a>
										<div style="margin-left: 20px;margin-top: 20px;">
											<a style="margin-left:18px">华为手环 B3</a><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;
											<a style="color: rgb(202,20,49);margin-left:18px">¥999</a>
										</div>
									</li>
									<li>
										<a target="_blank" href="GoodsServlet.do?goodsname=HUAWEI WATCH 2&method=goodsdetail&method2=goodsdetailpic" ><img alt="荣耀" src="image/smw/watch/sport_watch/orange/1.jpg" style="height:148px;width:148px;margin-top:20px;margin-left:8px"></a>
										<div style="margin-left: 30px;margin-top: 20px;">
											<a>HUAWEI WATCH 2</a><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;
											<a style="color: rgb(202,20,49);margin-left:8px">¥3788</a>
										</div>
									</li>
									<li>
										<a target="_blank" href="GoodsServlet.do?goodsname=PORSCHE Smartwatch&method=goodsdetail&&method2=goodsdetailpic" ><img alt="荣耀" src="image/smw/watch/PORSCHE_DESIGN_watch/black/1.jpg" style="height:148px;width:148px;margin-top:20px;margin-left:8px"></a>
										<div style="margin-left: 0px;margin-top: 20px;">
											<a style="margin-left:10px">PORSCHE Smartwatch</a><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;
											<a style="color: rgb(202,20,49);margin-left:30px">¥4999</a>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</li>
					<li class="banner_li" style="color:darkgrey;" >
						<div class="list" style="color: darkgrey;">
							<a>智能家居</a>
							<div id="llist">
								<a>路由器</a>
								<a>电视盒子</a>
								<a>照明</a>
								<a class="banner_menu_i">&gt;</a>
							</div>
						</div>
						<div class="banner_menu_content" id="show_4">
							<a class="banner_menu_text"></a>
							<div id="pd">
								<a id="banner_a" href="#" target="_blank" style="text-align: center">
									<span class="f1" style="text-align: center">浏览笔记本 &nbsp;&&nbsp;浏览频道</span>
									<span class="f2" style="text-align: end;">&gt;</span>
								</a>
							</div>
							<div id="lj">
								<ul >
									<li>平板电脑</li>
									<li>笔记本配件</li>
									<li>笔记本配件</li>
									<li></li>
									<li></li>
									<li></li>
									<li></li>
									<li></li>
								</ul>
							</div>
							<div id="jtsp">
								<ul>
									<li>
										<a target="_blank" href="GoodsServlet.do?goodsname=HUAWEI MateBook X Pro&method=goodsdetail&&method2=goodsdetailpic" ><img alt="荣耀" src="image/nbp&tbp/nbp/nbp_mate_x_pro/silver/1.jpg" style="height:148px;width:148px;margin-top:20px;margin-left:8px"></a>
										<div style="margin-left: 5px;margin-top: 20px;">
											<a>HUAWEI MateBook X Pro</a><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;
											<a style="color: rgb(202,20,49);margin-left:28px">¥4499</a>
										</div>
									</li>
									<li>
										<a target="_blank" href="GoodsServlet.do?goodsname=荣耀MagicBook&method=goodsdetail&&method2=goodsdetailpic" ><img alt="荣耀" src="image/nbp&tbp/nbp/honormagicbook/sliver/1.jpg" style="height:148px;width:148px;margin-top:20px;margin-left:8px"></a>
										<div style="margin-left: 40px;margin-top: 20px;">
											<a >荣耀MagicBook</a><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;
											<a style="color: rgb(202,20,49);margin-left:8px">¥3399</a>
										</div>
									</li>
									<li>
										<a target="_blank" href="GoodsServlet.do?goodsname=华为平板 M5 Pro&method=goodsdetail&&method2=goodsdetailpic" ><img alt="荣耀" src="image/nbp&tbp/tbp/tbp_m5_pro/gray/1.jpg" style="height:148px;width:148px;margin-top:20px;margin-left:8px"></a>
										<div style="margin-left: 35px;margin-top: 20px;">
											<a>华为平板 M5 Pro</a><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;
											<a style="color: rgb(202,20,49);margin-left:8px">¥3788</a>
										</div>
									</li>
									<li>
										<a target="_blank" href="GoodsServlet.do?goodsname=HUAWEI MateBook E&method=goodsdetail&&method2=goodsdetailpic" ><img alt="荣耀" src="image/nbp&tbp/nbp/huawei_matebook_e/gold/1.jpg" style="height:148px;width:148px;margin-top:20px;margin-left:8px"></a>
										<div style="margin-left: 10px;margin-top: 20px;">
											<a style="margin-left:8px">HUAWEI MateBook E</a><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;
											<a style="color: rgb(202,20,49);margin-left:28px">¥4899</a>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</li>
					<li class="banner_li" style="color:darkgrey;" >
						<div class="list" style="color: darkgrey;">
							<a>通用配件</a>
							<div id="llist">
								<a>移动电源</a>
								<a>耳机</a>
								<a>音响</a>
								<a class="banner_menu_i">&gt;</a>
							</div>
						</div>
						<div class="banner_menu_content" id="show_5">
							<a class="banner_menu_text"></a>
							<div id="pd">
								<a id="banner_a" href="#" target="_blank" style="text-align: center">
									<span class="f1" style="text-align: center">手机浏览频道</span>
									<span class="f2" style="text-align: end;">&gt;</span>
								</a>
							</div>
							<div id="lj">
								<ul >
									<li>荣耀</li>
									<li>HUAWEI P系列</li>
									<li>荣耀畅玩系列</li>
									<li>HUAWEI Mate系列</li>
									<li>HUAWEI Nova系列</li>
									<li>HUAWEI 麦芒系列</li>
									<li>华为畅享系列</li>
									<li>移动4G+专区</li>
								</ul>
							</div>
							<div id="jtsp">
								<ul>
									<li>
										<a target="_blank" href="GoodsServlet.do?goodsname=HUAWEI nova 3&method=goodsdetail&&method2=goodsdetailpic" ><img alt="荣耀" src="image/smp/nova/huawei_nova_3/blue/1.jpg" style="height:148px;width:148px;margin-top:20px;margin-left:8px"></a>
										<div style="margin-left: 50px;margin-top: 20px;">
											<a>HUAWEI nova 3</a><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;
											<a style="color: rgb(202,20,49);">¥2799</a>
										</div>
									</li>
									<li>
										<a target="_blank" href="GoodsServlet.do?goodsname=荣耀10&method=goodsdetail&&method2=goodsdetailpic" ><img alt="荣耀" src="image/smp/honor/honor10/black/1.jpg" style="height:148px;width:148px ;margin-top:20px;margin-left:8px"></a>
										<div style="margin-left: 50px;margin-top: 20px;">
											<a style="margin-left:18px">荣耀10</a><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;
											<a style="color: rgb(202,20,49);">¥2599</a>
										</div>
									</li>
									<li>
										<a target="_blank" href="GoodsServlet.do?goodsname=HUAWEI P20&method=goodsdetail&&method2=goodsdetailpic" ><img alt="荣耀" src="image/smp/p/huawei_p20/black/1.jpg" style="height:148px;width:148px;margin-top:20px;margin-left:8px"></a>
										<div style="margin-left: 50px;margin-top: 20px;">
											<a>HUAWEI P20</a><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;
											<a style="color: rgb(202,20,49);">¥3788</a>
										</div>
									</li>
									<li>
										<a target="_blank" href="GoodsServlet.do?goodsname=荣耀9i&method=goodsdetail&&method2=goodsdetailpic" ><img alt="荣耀" src="image/smp/honor/honor9i/black/1.jpg" style="height:148px;width:148px;margin-top:20px;margin-left:8px"></a>
										<div style="margin-left: 30px;margin-top: 20px;">
											<a style="margin-left:18px">荣耀9i</a><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;
											<a style="color: rgb(202,20,49);">¥4999</a>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</li>
					<li class="banner_li" style="color:darkgrey;" >
						<div class="list" style="color: darkgrey;">
							<a>专属配件</a>
							<div id="llist">
								<a>保护壳</a>
								<a>保护套</a>
								<a>贴膜</a>
								<a class="banner_menu_i">&gt;</a>
							</div>
						</div>
						<div class="banner_menu_content" id="show_6">
							<a class="banner_menu_text"></a>
							<div id="pd">
								<a id="banner_a" href="#" target="_blank" style="text-align: center">
									<span class="f1" style="text-align: center">浏览只能穿戴频道</span>
									<span class="f2" style="text-align: end;">&gt;</span>
								</a>
							</div>
							<div id="lj">
								<ul >
									<li>手环</li>
									<li>手表</li>
									<li>VR</li>
									<li></li>
									<li></li>
									<li></li>
									<li></li>
									<li></li>
								</ul>
							</div>
							<div id="jtsp">
								<ul>
									<li>
										<a target="_blank" href="GoodsServlet.do?goodsname=华为手环 B5&method=goodsdetail&&method2=goodsdetailpic" ><img alt="荣耀" src="image/smw/ring/huaweiringb5/black/1.jpg" style="height:148px;width:148px;margin-top:20px;margin-left:8px"></a>
										<div style="margin-left: 50px;margin-top: 20px;">
											<a>华为手环 B5</a><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;
											<a style="color: rgb(202,20,49);">¥999</a>
										</div>
									</li>
									<li>
										<a target="_blank" href="GoodsServlet.do?goodsname=华为手环 B3&method=goodsdetail&&method2=goodsdetailpic" ><img alt="荣耀" src="image/smw/ring/huaweiringb3/black/1.jpg" style="height:148px;width:148px ;margin-top:20px;margin-left:8px"></a>
										<div style="margin-left: 20px;margin-top: 20px;">
											<a style="margin-left:18px">华为手环 B3</a><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;
											<a style="color: rgb(202,20,49);margin-left:18px">¥999</a>
										</div>
									</li>
									<li>
										<a target="_blank" href="GoodsServlet.do?goodsname=HUAWEI WATCH 2&method=goodsdetail&method2=goodsdetailpic" ><img alt="荣耀" src="image/smw/watch/sport_watch/orange/1.jpg" style="height:148px;width:148px;margin-top:20px;margin-left:8px"></a>
										<div style="margin-left: 30px;margin-top: 20px;">
											<a>HUAWEI WATCH 2</a><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;
											<a style="color: rgb(202,20,49);margin-left:8px">¥3788</a>
										</div>
									</li>
									<li>
										<a target="_blank" href="GoodsServlet.do?goodsname=PORSCHE Smartwatch&method=goodsdetail&&method2=goodsdetailpic" ><img alt="荣耀" src="image/smw/watch/PORSCHE_DESIGN_watch/black/1.jpg" style="height:148px;width:148px;margin-top:20px;margin-left:8px"></a>
										<div style="margin-left: 0px;margin-top: 20px;">
											<a style="margin-left:10px">PORSCHE Smartwatch</a><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;
											<a style="color: rgb(202,20,49);margin-left:30px">¥4999</a>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</li>
				</ul>
			</div>

			<div class="gd">
				<img src="img/20180705191248135.jpg" name="tu" onmouseover="ting()" onmouseout="goon()" style="width: 100%;height: 450px;" />
				<img src="img/20180724211514751.jpg" class="cang" name="tu" onmouseover="ting()" onmouseout="goon()" style="width: 100%;height: 450px;" />
				<img src="img/20180724213224980 (1).jpg" class="cang" name="tu" onmouseover="ting()" onmouseout="goon()" style="width: 100%;height: 450px;" />
				<img src="img/lb4.jpg" class="cang" name="tu" onmouseover="ting()" onmouseout="goon()" style="width: 100%;height: 450px;" />
				<img src="img/lb5.jpg" class="cang" name="tu" onmouseover="ting()" onmouseout="goon()" style="width: 100%;height: 450px;" />
				<img src="img/lb6.jpg" class="cang" name="tu" onmouseover="ting()" onmouseout="goon()" style="width: 100%;height: 450px;" />
				<img src="img/lb7.jpg" class="cang" name="tu" onmouseover="ting()" onmouseout="goon()" style="width: 100%;height: 450px;" />
				<img src="img/lb8.jpg" class="cang" name="tu" onmouseover="ting()" onmouseout="goon()" style="width: 100%;height: 450px;" />
				<div id="box">
					<ul>
						<li class="abc" onmouseover="show(0)"></li>
						<li class="abc" onmouseover="show(1)"></li>
						<li class="abc" onmouseover="show(2)"></li>
						<li class="abc" onmouseover="show(3)"></li>
						<li class="abc" onmouseover="show(4)"></li>
						<li class="abc" onmouseover="show(5)"></li>
						<li class="abc" onmouseover="show(6)"></li>
						<li class="abc" onmouseover="show(7)"></li>
					</ul>
				</div>
			</div>
		</div>

<div style="background-color: #f5f5f5;">
        <div style="height: 40px;"></div>

		<div id="hot_feature">

			<ul class="home_ul">
				<li>
					<a target="_blank" href="GoodsServlet.do?goodsname=荣耀9i&method=goodsdetail&method2=goodsdetailpic" class="item"><img alt="荣耀" src="img/20180607151142377.png"></a>
				</li>
				<li>
					<a target="_blank" href="GoodsServlet.do?goodsname=HUAWEI Mate 10&method=goodsdetail&method2=goodsdetailpic"  class="item"><img alt="华为" src="img/20180801203454619.png"></a>
				</li>
				<li>
					<a target="_blank" href="GoodsServlet.do?goodsname=HUAWEI nova 3&method=goodsdetail&&method2=goodsdetailpic"  class="item"><img alt="荣耀" src="img/20180718215002955.png"></a>
				</li>
				<li>
					<a target="_blank" href="GoodsServlet.do?goodsname=HUAWEI P20 Pro&method=goodsdetail&method2=goodsdetailpic"  class="item"><img alt="华为" src="img/20180625151214918.png"></a>
				</li>
			</ul>

		</div>
		
		<div style="clear: both;"></div><!--清除浮动-->
        
        
        
		<div id="head_hot_goods_wrap">
			<div id="head_hot_goods_title">
				<span class="title_span">热销单品</span>
				<div id="head_hot_goods_change">
					<span id="head_hot_goods_prave"><</span>
					<span id="head_hot_goods_next">></span>
				</div>
			</div>
			<div class="floor_goods_wrap">
				<ul>
					<li class="floor_goods_wrap_li">
						<a target="_blank" href="GoodsServlet.do?goodsname=HUAWEI nova 3e&method=goodsdetail&method2=goodsdetailpic"><img src="img/smt1.jpg"></a>
					</li>
					<li class="floor_goods_wrap_li" >
					
						<a class="floor_goods_img" target="_blank" href="GoodsServlet.do?goodsname=荣耀10&method=goodsdetail&method2=goodsdetailpic"><img src="img/smt2.jpg" height="148px" width="148px"></a>
						<a target="_blank" style="color:#3a3a3a"  href="GoodsServlet.do?goodsname=荣耀10&method=goodsdetail&method2=goodsdetailpic" class="floor_goods_tit">荣耀10</a>
						<a target="_blank" href="GoodsServlet.do?goodsname=荣耀10&method=goodsdetail&method2=goodsdetailpic" class="floor_goods_txt">限时优惠100 赠价值249元魔声耳机&nbsp;</a>
						<a target="_blank" href="GoodsServlet.do?goodsname=荣耀10&method=goodsdetail&method2=goodsdetailpic" class="floor_goods_price">¥2599</a>
					
					</li>
					<li class="floor_goods_wrap_li">
						<a class="floor_goods_img" target="_blank" href="GoodsServlet.do?goodsname=HUAWEI P20&method=goodsdetail&method2=goodsdetailpic"><img src="img/smt3.jpg" height="148px" width="148px"></a>
						<a class="floor_goods_tit" style="color:#3a3a3a" target="_blank" href="GoodsServlet.do?goodsname=HUAWEI P20&method=goodsdetail&method2=goodsdetailpic">HUAWEI P20</a>
						<a class="floor_goods_txt" target="_blank" href="GoodsServlet.do?goodsname=HUAWEI P20&method=goodsdetail&method2=goodsdetailpic">限量送精美配件&nbsp;</a>
						<a class="floor_goods_price" target="_blank" href="GoodsServlet.do?goodsname=HUAWEI P20&method=goodsdetail&method2=goodsdetailpic">¥3788</a>
					</li>
					<li class="floor_goods_wrap_li">
						<a class="floor_goods_img" target="_blank" href="GoodsServlet.do?goodsname=荣耀V10&method=goodsdetail&method2=goodsdetailpic"><img src="img/smt4.jpg" height="148px" width="148px"></a>
						<a class="floor_goods_tit" style="color:#3a3a3a" target="_blank" href="GoodsServlet.do?goodsname=荣耀V10&method=goodsdetail&method2=goodsdetailpic">荣耀V10</a>
						<a class="floor_goods_txt" target="_blank" href="GoodsServlet.do?goodsname=荣耀V10&method=goodsdetail&method2=goodsdetailpic">最高直降700元 享多重好礼&nbsp; </a>
						<a class="floor_goods_price" target="_blank" href="GoodsServlet.do?goodsname=荣耀V10&method=goodsdetail&method2=goodsdetailpic">¥1999</a>
					</li>
					<li class="floor_goods_wrap_li">
						<a class="floor_goods_img" target="_blank" href="GoodsServlet.do?goodsname=HUAWEI Mate 10 保时捷设计&method=goodsdetail&method2=goodsdetailpic"><img src="img/smt5.jpg" height="148px" width="148px"></a>
						<a class="floor_goods_tit" style="color:#3a3a3a" target="_blank" href="GoodsServlet.do?goodsname=HUAWEI Mate 10 保时捷设计&method=goodsdetail&method2=goodsdetailpic">HUAWEI Mate 10 保时捷设计</a>
						<a class="floor_goods_txt" target="_blank" href="GoodsServlet.do?goodsname=HUAWEI Mate 10 保时捷设计&method=goodsdetail&method2=goodsdetailpic">限量典藏&nbsp; </a>
						<a class="floor_goods_price" target="_blank" href="GoodsServlet.do?goodsname=HUAWEI Mate 10 保时捷设计&method=goodsdetail&method2=goodsdetailpic">¥9999</a>
					</li>
					<li class="floor_goods_wrap_li">
						<a class="floor_goods_img" target="_blank" href="GoodsServlet.do?goodsname=荣耀畅玩7A&method=goodsdetail&method2=goodsdetailpic"><img src="img/smt6.jpg" height="148px" width="148px"></a>
						<a class="floor_goods_tit" style="color:#3a3a3a" target="_blank" href="GoodsServlet.do?goodsname=goodsname=荣耀畅玩7A&method=goodsdetail&method2=goodsdetailpic">荣耀畅玩7A</a>
						<a class="floor_goods_txt"  target="_blank" href="GoodsServlet.do?goodsname=goodsname=荣耀畅玩7A&method=goodsdetail&method2=goodsdetailpic">最高优惠320+高配尊享送耳机&nbsp;</a>
						<a class="floor_goods_price"  target="_blank" href="GoodsServlet.do?goodsname=goodsname=荣耀畅玩7A&method=goodsdetail&method2=goodsdetailpic">¥1099</a>
					</li>
					<li class="floor_goods_wrap_li">
						<a class="floor_goods_img" target="_blank" href="GoodsServlet.do?goodsname=华为畅享8 Plus&method=goodsdetail&method2=goodsdetailpic"><img src="img/smt7.jpg" height="148px" width="148px"></a>
						<a class="floor_goods_tit" style="color:#3a3a3a" target="_blank" href="GoodsServlet.do?goodsname=华为畅享8 Plus&method=goodsdetail&method2=goodsdetailpic">华为畅享8 Plus</a>
						<a class="floor_goods_txt" target="_blank" href="GoodsServlet.do?goodsname=华为畅享8 Plus&method=goodsdetail&method2=goodsdetailpic">领券立减50+赠好礼 </a>
						<a class="floor_goods_price" target="_blank" href="GoodsServlet.do?goodsname=华为畅享8 Plus&method=goodsdetail&method2=goodsdetailpic">¥1899</a>
					</li>
					<li class="floor_goods_wrap_li">
						<a class="floor_goods_img" target="_blank" href="GoodsServlet.do?goodsname=HUAWEI Mate 10 Pro&method=goodsdetail&method2=goodsdetailpic"><img src="img/smt8.jpg" height="148px" width="148px"></a>
						<a class="floor_goods_tit" style="color:#3a3a3a" target="_blank" href="GoodsServlet.do?goodsname=HUAWEI Mate 10 Pro0&method=goodsdetail&method2=goodsdetailpic">HUAWEI Mate 10 Pro</a>
						<a class="floor_goods_txt" target="_blank" href="GoodsServlet.do?goodsname=HUAWEI Mate 10 Pro&method=goodsdetail&method2=goodsdetailpic">限时优惠500+赠好礼&nbsp; </a>
						<a class="floor_goods_price" target="_blank" href="GoodsServlet.do?goodsname=HUAWEI Mate 10 Pro&method=goodsdetail&method2=goodsdetailpic">¥3999</a>
					</li>
					<li class="floor_goods_wrap_li">
						<a class="floor_goods_img" target="_blank" href="GoodsServlet.do?goodsname=荣耀9青春版&method=goodsdetail&method2=goodsdetailpic"><img src="img/smt9.jpg" height="148px" width="148px"></a>
						<a class="floor_goods_tit" style="color:#3a3a3a" target="_blank" href="GoodsServlet.do?goodsname=荣耀9青春版&method=goodsdetail&method2=goodsdetailpic">荣耀9青春版</a>
						<a class="floor_goods_txt" target="_blank" href="GoodsServlet.do?goodsname=荣耀9青春版&method=goodsdetail&method2=goodsdetailpic">最高优惠400+高配尊享送耳机 </a>
						<a class="floor_goods_price" target="_blank" href="GoodsServlet.do?goodsname=荣耀9青春版&method=goodsdetail&method2=goodsdetailpic">¥999</a>
					</li>
					<div style="clear:both;"></div>
				</ul>
			</div>
		</div>
		<div id="main_show_box">
			<div id="floor_1">
				<div id="floor_head">
					<span class="title_span">精品推荐</span>
				</div>
			</div>

			<div class="wc1200 row rowE">
				<div class="bd mt20" style="margin: 10px;">
					<div id="sca1" class="warp-pic-list">
						<div id="wrapBox1" class="wrapBox">
							<ul id="count1" class="count clearfix">
								<li>
									<a href="#2685" class="img_wrap">
										<img src="img/142_142_1511858796676mp.jpg" border="0"></a>
										<div style="margin-top: 20px;margin-left: 40px;">
									<span>热门配件 荣耀 10000mAh </span>
									<p></p>
									<span style="color: red;margin-left: 40px;">￥1000.00</span>
                                         </div>
								</li>
								<li>
									<a href="" class="img_wrap">
										<img src="img/142_142_1513827604555mp.jpg" border="0"></a>
										<div style="margin-top: 20px;margin-left: 40px;">
									<span>热门配件 荣耀 10000mAh </span>
									<p></p><span style="color: red;margin-left: 40px;">￥1000.00</span>
									</div>
								</li>
								<li>
									<a href="" class="img_wrap">
										<img src="img/142_142_1523952379540mp.jpg" border="0"></a>
										<div style="margin-top: 20px;margin-left: 40px;">
									<span>热门配件 荣耀 10000mAh </span>
									<p></p><span style="color: red;margin-left: 40px;">￥1000.00</span>
									</div>
								</li>
								<li>
									<a href="" class="img_wrap">
										<img src="img/hezimini!160x110.jpg" border="0"></a>
									<div style="margin-top: 20px;margin-left: 40px;">
									<span>热门配件 荣耀 10000mAh </span>
									<p></p><span style="color: red;margin-left: 40px;">￥1000.00</span>
									</div>
								</li>
								<li>
									<a href="" class="img_wrap">
										<img src="img/142_142_1524125706599mp.jpg" border="0"></a>
									<div style="margin-top: 20px;margin-left: 40px;">
									<span>热门配件 荣耀 10000mAh </span>
									<p></p><span style="color: red;margin-left: 40px;">￥1000.00</span>
									</div>
								</li>
								<li>
									<a href="#2685" class="img_wrap">
										<img src="img/142_142_1527674571952mp.jpg" border="0"></a>
									<div style="margin-top: 20px;margin-left: 40px;">
									<span>热门配件 荣耀 10000mAh </span>
									<p></p><span style="color: red;margin-left: 40px;">￥1000.00</span>
									</div>
								</li>
								<li>
									<a href="" class="img_wrap">
										<img src="img/142_142_1527674756088mp.jpg" border="0"></a>
									<div style="margin-top: 20px;margin-left: 40px;">
									<span>热门配件 荣耀 10000mAh </span>
									<p></p><span style="color: red;margin-left: 40px;">￥1000.00</span>
									</div>
								</li>
								<li>
									<a href="" class="img_wrap">
										<img src="img/142_142_1524125706599mp.jpg" border="0"></a>
									<div style="margin-top: 20px;margin-left: 40px;">
									<span>热门配件 荣耀 10000mAh </span>
									<p></p><span style="color: red;margin-left: 40px;">￥1000.00</span>
									</div>
								</li>
								<li>
									<a href="" class="img_wrap">
										<img src="img/142_142_1527674756088mp.jpg" border="0"></a>
									<div style="margin-top: 20px;margin-left: 40px;">
									<span>热门配件 荣耀 10000mAh </span>
									<p></p><span style="color: red;margin-left: 40px;">￥1000.00</span>
									</div>
								</li>
								<li>
									<a href="" class="img_wrap">
										<img src="img/142_142_1527674756088mp.jpg" border="0"></a>
									<div style="margin-top: 20px;margin-left: 40px;">
									<span>热门配件 荣耀 10000mAh </span>
									<p></p><span style="color: red;margin-left: 40px;">￥1000.00</span>
									</div>
								</li>

							</ul>

						</div>
						<a id="right1" class="prev icon btn"></a>
						<a id="left1" class="next icon btn"></a>
					</div>
				</div>
			</div>
			
		<div style="width: 1200px;margin: 0 auto;margin-top: 30px;" > <img src="img/2018062214341386.jpg" /> </div>
			
			<div class="h">
					<h2 class="channel-title fl">手机</h2>
					<ul class="channel-nav fl">
	                    	<li><a href="" target="_blank">荣耀</a></li>
	                    	<li><a href="" target="_blank" >HUAWEI P系列</a></li>
	                    	<li><a href="" target="_blank" >荣耀畅玩系列</a></li>
	                    	<li><a href="" target="_blank">HUAWEI Mate系列</a></li>
	                    	<li><a href="" target="_blank">HUAWEI nova系列</a></li>
	                    	<li><a href="" target="_blank" >HUAWEI 麦芒系列</a></li>
	                    	<li><a href="" target="_blank">华为畅享系列</a></li>
	                    	<li><a href="" target="_blank">移动4G+专区</a></li>
					</ul>
					<div class="channel-more fr">
						<a href="" target="_blank" >更多&gt;</a>
					</div>
				<div style="clear: both;"></div>
					
				</div>
				
				
				
				<div class="goods-list">
						<ul class="grid-list clearfix">
										<li class="grid-items grid-items-md">
											<a class="thumb" href="https://www.vmall.com/product/10086094364044.html" target="_blank" onclick="pushFoolAdvertMsg('1','手机','https://res0.vmallres.com/pimages//frontLocation/content/1268817/1531452485136.jpg','1531452485136.jpg','https://www.vmall.com/product/10086094364044.html')">
												<img alt="" src="https://res0.vmallres.com/pimages//frontLocation/content/1268817/1531452485136.jpg" style="margin: 0px; height: 346px;width: 291px;">
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="https://www.vmall.com/product/396602535.html" target="_blank" onclick="pushFoolGoodsMsg(this,2,'1','手机','616330979','12')">
												<p class="grid-img">
															<img alt="HUAWEI Mate 10 4GB+64GB 全网通版（亮黑色）" src="https://res0.vmallres.com/pimages//product/6901443200115/428_428_1507794825491mp.jpg">
												</p>
												<div class="grid-title">HUAWEI Mate 10</div>
												<p class="grid-desc">限时优惠200元&nbsp;</p>
												<p class="grid-price">¥3399</p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="https://www.vmall.com/product/10086883263315.html" target="_blank" onclick="pushFoolGoodsMsg(this,3,'1','手机','10086555041694','12')">
												<p class="grid-img">
															<img alt="荣耀畅玩7C 全网通标配版 3GB+32GB（极光蓝）" src="https://res0.vmallres.com/pimages//product/6901443218929/428_428_1531100299627mp.jpg">
												</p>
												<div class="grid-title">荣耀畅玩7C</div>
												<p class="grid-desc">最高优惠100 送耳机&nbsp;</p>
												<p class="grid-price">¥899</p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="https://www.vmall.com/product/135859985.html" target="_blank" onclick="pushFoolGoodsMsg(this,4,'1','手机','776034951','12')">
												<p class="grid-img">
															<img alt="HUAWEI nova 2s 6GB+64GB 全网通版（樱粉金）" src="https://res0.vmallres.com/pimages//product/6901443211111/428_428_1530668345992mp.jpg">
												</p>
												<div class="grid-title">HUAWEI nova 2s</div>
												<p class="grid-desc">赠精美配件&nbsp;</p>
												<p class="grid-price">¥2599</p>
				                                <p class="grid-tips">
														<!--<img alt="HUAWEI nova 2s 6GB+64GB 全网通版（樱粉金）" src="https://res0.vmallres.com/pimages//tag/95/1497576073762.png">-->
				                                </p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="https://www.vmall.com/product/10086070385182.html" target="_blank" onclick="pushFoolGoodsMsg(this,5,'1','手机','10086765914411','12')">
												<p class="grid-img">
															<img alt="荣耀畅玩7A 全网通标配版 2GB+32GB（幻夜黑）" src="https://res0.vmallres.com/pimages//product/6901443225613/428_428_1522134758889mp.jpg">
												</p>
												<div class="grid-title">荣耀畅玩7A</div>
												<p class="grid-desc">优惠100 高配送耳机&nbsp;</p>
												<p class="grid-price">¥699</p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="https://www.vmall.com/product/10086733534868.html" target="_blank" onclick="pushFoolGoodsMsg(this,6,'1','手机','10086212501655','12')">
												<p class="grid-img">
															<img alt="华为畅享8 3GB+32GB 全网通标配版（粉色）" src="https://res0.vmallres.com/pimages//product/6901443218660/428_428_1521287027365mp.jpg">
												</p>
												<div class="grid-title">华为畅享8</div>
												<p class="grid-desc">直降200元！&nbsp;</p>
												<p class="grid-price">¥1099</p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="https://www.vmall.com/product/337476941.html" target="_blank" onclick="pushFoolGoodsMsg(this,7,'1','手机','44652558','12')">
												<p class="grid-img">
															<img alt="荣耀畅玩6 全网通标配版（白色）" src="https://res0.vmallres.com/pimages//product/6901443190676/428_428_1504174265912mp.jpg">
												</p>
												<div class="grid-title">荣耀畅玩6</div>
												<p class="grid-desc">荣耀高性价比手机&nbsp;</p>
												<p class="grid-price">¥599</p>
				                                <p class="grid-tips">
														<!--<img alt="荣耀畅玩6 全网通标配版（白色）" src="https://res0.vmallres.com/pimages//tag/71/1497575814983.png">-->
				                                </p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="/product/10086158977116.html" target="_blank" onclick="pushFoolGoodsMsg(this,8,'1','手机','10086138654132','12')">
												<p class="grid-img">
															<img alt="华为畅享 8e 青春 2GB+32GB 全网通版（蓝色）" src="https://res0.vmallres.com/pimages//product/6901443229925/428_428_1526973272209mp.jpg">
												</p>
												<div class="grid-title">华为畅享 8e 青春</div>
												<p class="grid-desc">赠配件礼包&nbsp;</p>
												<p class="grid-price">¥799</p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="https://www.vmall.com/product/10086157327552.html" target="_blank" onclick="pushFoolGoodsMsg(this,9,'1','手机','10086478125358','12')">
												<p class="grid-img">
															<img alt="华为畅享8e 3GB+32GB 全网通版（金色）" src="https://res0.vmallres.com/pimages//product/6901443225804/428_428_1521789402333mp.jpg">
												</p>
												<div class="grid-title">华为畅享8e</div>
												<p class="grid-desc">赠精美礼品&nbsp;</p>
												<p class="grid-price">¥999</p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="https://www.vmall.com/product/315957963.html" target="_blank" onclick="pushFoolGoodsMsg(this,10,'1','手机','28580224','12')">
												<p class="grid-img">
															<img alt="HUAWEI 麦芒6 4GB+64GB 全网通版（流光金）" src="https://res0.vmallres.com/pimages//product/6901443201440/428_428_1505273258208mp.jpg">
												</p>
												<div class="grid-title">麦芒6</div>
												<p class="grid-desc">5.9英寸全面屏&nbsp;</p>
												<p class="grid-price">¥2199</p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="https://www.vmall.com/product/173840389.html" target="_blank" onclick="pushFoolGoodsMsg(this,11,'1','手机','81139976','12')">
												<p class="grid-img">
															<img alt="HUAWEI Mate 10 保时捷设计 6GB+256GB 全网通版（钻石黑）" src="https://res0.vmallres.com/pimages//product/6901443203932/428_428_1509692219632mp.jpg">
												</p>
												<div class="grid-title">HUAWEI Mate 10 保时捷设计</div>
												<p class="grid-desc">赠豪华礼包+12期免息&nbsp;</p>
												<p class="grid-price">¥8999</p>
				                                <p class="grid-tips">
														<!--<img alt="HUAWEI Mate 10 保时捷设计 6GB+256GB 全网通版（钻石黑）" src="https://res0.vmallres.com/pimages//tag/75/1497575900592.png">-->
				                                </p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="https://www.vmall.com/product/84570258.html" target="_blank" onclick="pushFoolGoodsMsg(this,12,'1','手机','899430277','12')">
												<p class="grid-img">
															<img alt="荣耀9 全网通标配版 4GB+64GB（魅海蓝）" src="https://res0.vmallres.com/pimages//product/6901443189175/428_428_1496990939106mp.jpg">
												</p>
												<div class="grid-title">荣耀9</div>
												<p class="grid-desc">限时最高优惠500元&nbsp;</p>
												<p class="grid-price">¥1899</p>
											</a>
										</li>
						</ul>
				<div style="clear: both;"></div>
						
					</div>

             
              <div class="h">
					<h2 class="channel-title fl">笔记本电脑</h2>
					<ul class="channel-nav fl">
	                    	<li><a href="" target="_blank">平板电脑</a></li>
	                    	<li><a href="" target="_blank" >笔记本电脑</a></li>
	                    	<li><a href="" target="_blank" >笔记本配件</a></li>
	                    	
					</ul>
					
				<div style="clear: both;"></div>
					
				</div>
				
				
				
<div class="goods-list">
						<ul class="grid-list clearfix">
										<li class="grid-items grid-items-md">
											<a class="thumb" href="https://www.vmall.com/product/10086350349834.html" target="_blank" onclick="pushFoolAdvertMsg('2','笔记本电脑','https://res0.vmallres.com/pimages//frontLocation/content/1947317/1531702366389.png','1531702366389.png','https://www.vmall.com/product/10086350349834.html')">
												<img alt="" src="https://res0.vmallres.com/pimages//frontLocation/content/1947317/1531702366389.png" style="margin: 0px; height: 346px;width: 291px;">
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="/product/10086000689735.html" target="_blank" onclick="pushFoolGoodsMsg(this,2,'2','笔记本电脑','10086488837838','12')">
												<p class="grid-img">
															<img alt="（华为）HUAWEI MateBook X Pro 13.9英寸笔记本电脑 深空灰 i5 8GB 256GB 独显" src="https://res1.vmallres.com/pimages//product/6901443227815/428_428_1523525018367mp.jpg">
												</p>
												<div class="grid-title">HUAWEI MateBook X Pro</div>
												<p class="grid-desc">13.9英寸笔记本电脑&nbsp;</p>
												<p class="grid-price">¥8688</p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="https://www.vmall.com/product/10086786653860.html" target="_blank" onclick="pushFoolGoodsMsg(this,3,'2','笔记本电脑','10086953522941','12')">
												<p class="grid-img">
															<img alt="荣耀MagicBook 锐龙版 14英寸轻薄笔记本电脑 Ryzen R5-2500U（冰河银）" src="https://res1.vmallres.com/pimages//product/6901443233168/428_428_1527144296463mp.jpg">
												</p>
												<div class="grid-title">荣耀MagicBook 锐龙版</div>
												<p class="grid-desc">限时直降100元&nbsp;</p>
												<p class="grid-price">¥3899</p>
				                                <p class="grid-tips">
														<!--<img alt="荣耀MagicBook 锐龙版 14英寸轻薄笔记本电脑 Ryzen R5-2500U（冰河银）" src="https://res1.vmallres.com/pimages//tag/95/1497576073762.png">-->
				                                </p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="https://www.vmall.com/product/21046116.html" target="_blank" onclick="pushFoolGoodsMsg(this,4,'2','笔记本电脑','648692702','12')">
												<p class="grid-img">
															<img alt="【新品】（华为）HUAWEI MateBook D（2018版）15.6英寸轻薄笔记本电脑 皓月银+I5/8GB/256GB" src="https://res1.vmallres.com/pimages//product/6901443211388/428_428_1513571794593mp.jpg">
												</p>
												<div class="grid-title">HUAWEI MateBook D</div>
												<p class="grid-desc">15.6英寸笔记本电脑&nbsp;</p>
												<p class="grid-price">¥5188</p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="/product/417236260.html" target="_blank" onclick="pushFoolGoodsMsg(this,5,'2','笔记本电脑','227874837','12')">
												<p class="grid-img">
															<img alt="（华为）HUAWEI MateBook X 13英寸轻薄笔记本电脑 流光金 （I5/4GB/256GB）" src="https://res1.vmallres.com/pimages//product/6901443181216/428_428_1495008740731mp.jpg">
												</p>
												<div class="grid-title">HUAWEI MateBook X</div>
												<p class="grid-desc">尊享6期分期免息&nbsp;</p>
												<p class="grid-price">¥6188</p>
				                                <p class="grid-tips">
														<!--<img alt="（华为）HUAWEI MateBook X 13英寸轻薄笔记本电脑 流光金 （I5/4GB/256GB）" src="https://res1.vmallres.com/pimages//tag/75/1497575900592.png">-->
				                                </p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="/product/889979598.html" target="_blank" onclick="pushFoolGoodsMsg(this,6,'2','笔记本电脑','530206332','12')">
												<p class="grid-img">
															<img alt="（华为）HUAWEI MateBook E 12英寸时尚二合一笔记本电脑" src="https://res1.vmallres.com/pimages//product/6901443179152/428_428_1495007794253mp.jpg">
												</p>
												<div class="grid-title">HUAWEI MateBook E</div>
												<p class="grid-desc">时尚二合一笔记本电脑&nbsp;</p>
												<p class="grid-price">¥4988</p>
				                                <p class="grid-tips">
														<!--<img alt="（华为）HUAWEI MateBook E 12英寸时尚二合一笔记本电脑" src="https://res1.vmallres.com/pimages//tag/75/1497575900592.png">-->
				                                </p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="https://www.vmall.com/product/10086350349834.html" target="_blank" onclick="pushFoolGoodsMsg(this,7,'2','笔记本电脑','10086429894528','12')">
												<p class="grid-img">
															<img alt="荣耀MagicBook 14英寸轻薄笔记本电脑 i5-8250U 8GB 256GB 独显（星云紫）" src="https://res1.vmallres.com/pimages//product/6901443233205/428_428_1525665745494mp.jpg">
												</p>
												<div class="grid-title">荣耀MagicBook 星云紫</div>
												<p class="grid-desc">高颜值时尚轻薄本&nbsp;</p>
												<p class="grid-price">¥4988</p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="/product/21046116.html" target="_blank" onclick="pushFoolGoodsMsg(this,8,'2','笔记本电脑','684263315','12')">
												<p class="grid-img">
															<img alt="（华为）HUAWEI MateBook D 15.6英寸轻薄窄边框笔记本电脑（ i5-7200U  4G 500G 940MX 2G独显 FHD Win10）香槟金" src="https://res1.vmallres.com/pimages//product/6901443181001/428_428_1495006232039mp.jpg">
												</p>
												<div class="grid-title">HUAWEI MateBook D</div>
												<p class="grid-desc">15.6英寸轻薄窄边框笔记本电脑&nbsp;</p>
												<p class="grid-price">¥3788</p>
											</a>
										</li>
						</ul>
						<div style="clear: both;"></div>
					</div>
					
					 <div class="h">
					<h2 class="channel-title fl">精品平板</h2>
					<ul class="channel-nav fl">
	                    	<li><a href="" target="_blank">平板电脑</a></li>
	                    	<li><a href="" target="_blank" >笔记本电脑</a></li>
	                    	<li><a href="" target="_blank" >笔记本配件</a></li>
	                    	
					</ul>
					
				<div style="clear: both;"></div>
					
				</div>
				
				
				<div class="goods-list">
						<ul class="grid-list clearfix">
										<li class="grid-items grid-items-md current">
											<a class="thumb" href="https://www.vmall.com/product/10086030735533.html" target="_blank" onclick="pushFoolAdvertMsg('3','精品平板','https://res0.vmallres.com/pimages//frontLocation/content/1948737/1524040941875.jpg','1524040941875.jpg','https://www.vmall.com/product/10086030735533.html')">
												<img alt="" src="https://res0.vmallres.com/pimages//frontLocation/content/1948737/1524040941875.jpg" style="margin: 0px; height: 346px;width: 291px;">
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="https://www.vmall.com/product/516255415.html" target="_blank" onclick="pushFoolGoodsMsg(this,2,'3','精品平板','553104015','12')">
												<p class="grid-img">
															<img alt="荣耀Waterplay 防水影音平板 3GB+32GB WiFi版（皓月银）" src="https://res2.vmallres.com/pimages//product/6901443204526/428_428_1506671611280mp.jpg">
												</p>
												<div class="grid-title">荣耀Waterplay</div>
												<p class="grid-desc">最高直降100&nbsp;</p>
												<p class="grid-price">¥1599</p>
				                                <p class="grid-tips">
														<!--<img alt="荣耀Waterplay 防水影音平板 3GB+32GB WiFi版（皓月银）" src="https://res2.vmallres.com/pimages//tag/95/1497576073762.png">-->
				                                </p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="https://www.vmall.com/product/312318362.html" target="_blank" onclick="pushFoolGoodsMsg(this,3,'3','精品平板','547224994','12')">
												<p class="grid-img">
															<img alt="华为平板 M3 青春版 10.1英寸 3GB+32GB WiFi版（皎月白）" src="https://res2.vmallres.com/pimages//product/6901443183708/428_428_1495096799385mp.jpg">
												</p>
												<div class="grid-title">华为平板 M3 青春版 10.1英寸</div>
												<p class="grid-desc">哈曼卡顿品质立体声&nbsp;</p>
												<p class="grid-price">¥1899</p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="https://www.vmall.com/product/405225095.html" target="_blank" onclick="pushFoolGoodsMsg(this,4,'3','精品平板','852174199','12')">
												<p class="grid-img">
															<img alt="荣耀畅玩平板2 9.6英寸 WiFi高配版（苍穹灰）" src="https://res2.vmallres.com/pimages//product/6901443192458/428_428_1500455962969mp.jpg">
												</p>
												<div class="grid-title">荣耀畅玩平板2 9.6英寸</div>
												<p class="grid-desc">最高直降100元&nbsp;</p>
												<p class="grid-price">¥1199</p>
				                                <p class="grid-tips">
														<!--<img alt="荣耀畅玩平板2 9.6英寸 WiFi高配版（苍穹灰）" src="https://res2.vmallres.com/pimages//tag/95/1497576073762.png">-->
				                                </p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="/product/142312570.html" target="_blank" onclick="pushFoolGoodsMsg(this,5,'3','精品平板','121657460','12')">
												<p class="grid-img">
															<img alt="华为平板M3 青春版 8英寸 3GB+32GB WiFi版（皎月白）" src="https://res2.vmallres.com/pimages//product/6901443185399/428_428_1497422265771mp.jpg">
												</p>
												<div class="grid-title">华为平板M3 青春版 8英寸</div>
												<p class="grid-desc">增强护眼功能&nbsp;</p>
												<p class="grid-price">¥1399</p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="https://www.vmall.com/product/13278818.html" target="_blank" onclick="pushFoolGoodsMsg(this,6,'3','精品平板','811569431','12')">
												<p class="grid-img">
															<img alt="荣耀平板2 3GB+32GB WiFi版（香槟金）" src="https://res2.vmallres.com/pimages//product/6901443146048/428_428_1476778957240mp.jpg">
												</p>
												<div class="grid-title">荣耀平板2</div>
												<p class="grid-desc">直降100 限量赠保护膜&nbsp;</p>
												<p class="grid-price">¥1199</p>
				                                <p class="grid-tips">
														<!--<img alt="荣耀平板2 3GB+32GB WiFi版（香槟金）" src="https://res2.vmallres.com/pimages//tag/81/1497575964613.png">-->
				                                </p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="/product/10086868573443.html" target="_blank" onclick="pushFoolGoodsMsg(this,7,'3','精品平板','10086385882893','12')">
												<p class="grid-img">
															<img alt="华为平板 M5 10.8英寸 4GB+32GB WiFi版（香槟金）" src="https://res2.vmallres.com/pimages//product/6901443223138/428_428_1531379309228mp.jpg">
												</p>
												<div class="grid-title">华为平板 M5 10.8英寸</div>
												<p class="grid-desc">2K高清屏&nbsp;</p>
												<p class="grid-price">¥2488</p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="https://www.vmall.com/product/121879018.html" target="_blank" onclick="pushFoolGoodsMsg(this,8,'3','精品平板','729361012','12')">
												<p class="grid-img">
															<img alt="荣耀畅玩平板2 8英寸 WiFi高配版（苍穹灰）" src="https://res2.vmallres.com/pimages//product/6901443192441/428_428_1500455384160mp.jpg">
												</p>
												<div class="grid-title">荣耀畅玩平板2 8英寸</div>
												<p class="grid-desc">最高直降100元&nbsp;</p>
												<p class="grid-price">¥999</p>
											</a>
										</li>
						</ul>
						<div style="clear: both;"></div>
					</div>
					
					
					<div class="h">
					<h2 class="channel-title fl">智能穿戴</h2>
					<ul class="channel-nav fl">
	                    	<li><a href="" target="_blank">手环</a></li>
	                    	<li><a href="" target="_blank" >手表</a></li>
	                    	<li><a href="" target="_blank" >VR</a></li>
	                    	
					</ul>
					
				<div style="clear: both;"></div>
					
				</div>
				<div class="goods-list">
						<ul class="grid-list clearfix">
										<li class="grid-items grid-items-md current">
											<a class="thumb" href="https://www.vmall.com/product/10086572258093.html" target="_blank" onclick="pushFoolAdvertMsg('4','智能穿戴','https://res0.vmallres.com/pimages//frontLocation/content/2440103/1531926044073.png','1531926044073.png','https://www.vmall.com/product/10086572258093.html')">
												<img alt="" src="https://res0.vmallres.com/pimages//frontLocation/content/2440103/1531926044073.png" style="margin: 0px; height: 346px;width: 291px;">
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="https://www.vmall.com/product/369652507.html" target="_blank" onclick="pushFoolGoodsMsg(this,2,'4','智能穿戴','532696479','12')">
												<p class="grid-img">
															<img alt="荣耀畅玩手环 A2（魔法黑）" src="https://res3.vmallres.com/pimages//product/6901443168712/428_428_1495598460509mp.jpg">
												</p>
												<div class="grid-title">荣耀畅玩手环 A2</div>
												<p class="grid-desc">直降20元仅需129&nbsp;</p>
												<p class="grid-price">¥129</p>
				                                <p class="grid-tips">
														<!--<img alt="荣耀畅玩手环 A2（魔法黑）" src="https://res3.vmallres.com/pimages//tag/95/1497576073762.png">-->
				                                </p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="/product/270976970.html" target="_blank" onclick="pushFoolGoodsMsg(this,3,'4','智能穿戴','976288056','12')">
												<p class="grid-img">
															<img alt="HUAWEI WATCH 2 Pro华为新款智能手表 4G版（钛银灰）" src="https://res3.vmallres.com/pimages//product/6901443204212/428_428_1507769117117mp.jpg">
												</p>
												<div class="grid-title">HUAWEI WATCH 2 Pro</div>
												<p class="grid-desc">eSIM一号双终端&nbsp;</p>
												<p class="grid-price">¥2588</p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="https://www.vmall.com/product/993405255.html" target="_blank" onclick="pushFoolGoodsMsg(this,4,'4','智能穿戴','636006496','12')">
												<p class="grid-img">
															<img alt="荣耀手环3 标准版（活力橙）" src="https://res3.vmallres.com/pimages//product/6901443183548/428_428_1496627716396mp.jpg">
												</p>
												<div class="grid-title">荣耀手环3</div>
												<p class="grid-desc">限时最高降30元&nbsp;</p>
												<p class="grid-price">¥139</p>
				                                <p class="grid-tips">
														<!--<img alt="荣耀手环3 标准版（活力橙）" src="https://res3.vmallres.com/pimages//tag/71/1497575814983.png">-->
				                                </p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="https://www.vmall.com/product/658947392.html" target="_blank" onclick="pushFoolGoodsMsg(this,5,'4','智能穿戴','790651961','12')">
												<p class="grid-img">
															<img alt="HUAWEI WATCH 2 华为第二代智能运动手表 蓝牙版（星空灰）" src="https://res3.vmallres.com/pimages//product/6901443171767/428_428_1488181445263mp.jpg">
												</p>
												<div class="grid-title">HUAWEI WATCH 2</div>
												<p class="grid-desc">独立通话  移动支付&nbsp;</p>
												<p class="grid-price">¥1688</p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="https://www.vmall.com/product/798789671.html" target="_blank" onclick="pushFoolGoodsMsg(this,6,'4','智能穿戴','821498449','12')">
												<p class="grid-img">
															<img alt="华为运动手环 标准版（黑色）" src="https://res3.vmallres.com/pimages//product/6901443190287/428_428_1498098860450mp.jpg">
												</p>
												<div class="grid-title">华为运动手环</div>
												<p class="grid-desc">50米防水游泳&nbsp;</p>
												<p class="grid-price">¥278</p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="https://www.vmall.com/product/184868333.html" target="_blank" onclick="pushFoolGoodsMsg(this,7,'4','智能穿戴','791219487','12')">
												<p class="grid-img">
															<img alt="荣耀手表 S1" src="https://res3.vmallres.com/pimages//frontLocation/content/937161/1488161147740.png">
												</p>
												<div class="grid-title">荣耀手表 S1</div>
												<p class="grid-desc">限时直降50元&nbsp;</p>
												<p class="grid-price">¥499</p>
				                                <p class="grid-tips">
														<!--<img alt="荣耀手表 S1 表体（深空灰）+长腕带（黑色）" src="https://res3.vmallres.com/pimages//tag/95/1497576073762.png">-->
				                                </p>
											</a>
										</li>
										<li class="grid-items">
											<a class="thumb" href="https://www.vmall.com/product/121088789.html" target="_blank" onclick="pushFoolGoodsMsg(this,8,'4','智能穿戴','8150711','12')">
												<p class="grid-img">
															<img alt="华为手环B3 青春版（黑色）" src="https://res3.vmallres.com/pimages//product/6901443197262/428_428_1506139200867mp.jpg">
												</p>
												<div class="grid-title">华为手环B3 青春版</div>
												<p class="grid-desc">是手环 也是耳机&nbsp;</p>
												<p class="grid-price">¥499</p>
											</a>
										</li>
						</ul>
						<div style="clear: both;"></div>
					</div>
					
					
					
              
			
		</div>
		<div style="width: 1200px; margin: 0 auto;  margin-bottom: 40px;"> <img src="img/20180718170944826.jpg"  /> </div>
		<div><img src="img/bottom_final.png"/></div>
		<!--<div id="foot_box">
			<div id="foot_wrap">
				<div class="foot_top">
					<ul>

						<li>
							<a>百强企业 品质保证</a>
						</li>
						<li>
							<a>7天退货 15天换货</a>
						</li>
						<li>
							<a>48元起免运费</a>
						</li>
						<li>
							<a>448家维修网点 全国联保</a>
						</li>

					</ul>
				</div>
				<div class="foot_bottom">
					<div class="foot_bottom_l">
						<dl>
							<dt>购物相关</dt>
							<dd>
								<a>购物指南</a>
							</dd>
							<dd>
								<a>配送方式</a>
							</dd>
							<dd>
								<a>支付方式</a>
							</dd>
							<dd>
								<a>常见问题</a>
							</dd>
						</dl>
						<dl>
							<dt>报修与退换货</dt>
							<dd>
								<a>报修政策</a>
							</dd>
							<dd>
								<a>退换货政策</a>
							</dd>
							<dd>
								<a>退换货流程</a>
							</dd>
							<dd>
								<a>报修状态查询</a>
							</dd>
						</dl>
						<dl>
							<dt>维修与技术支持</dt>
							<dd>
								<a>售后网点</a>
							</dd>
							<dd>
								<a>预约维修</a>
							</dd>
							<dd>
								<a>手机寄修</a>
							</dd>
							<dd>
								<a>备件价格查询</a>
							</dd>
							<dd>
								<a>上门服务</a>
							</dd>
						</dl>
						<dl>
							<dt>关于我们</dt>
							<dd>
								<a>公司介绍</a>
							</dd>
							<dd>
								<a>华为商城简介</a>
							</dd>
							<dd>
								<a>华为线下门店</a>
							</dd>
							<dd>
								<a>荣耀线下门店</a>
							</dd>
							<dd>
								<a>诚征英才</a>
							</dd>
						</dl>
						<dl>
							<dt>关注我们</dt>
							<dd>
								<a>新浪微博</a>
							</dd>
							<dd>
								<a>腾信微博</a>
							</dd>
							<dd>
								<a>花粉俱乐部</a>
							</dd>
						</dl>
						<dl>
							<dt>友情链接</dt>
							<dd>
								<a>华为官网</a>
							</dd>
							<dd>
								<a>华为商城手机版</a>
							</dd>
							<dd>
								<a>荣耀官网</a>
							</dd>
							<dd>
								<a>花粉俱乐部</a>
							</dd>
							<dd>
								<a>网站地图</a>
							</dd>
						</dl>
						<dl>
							<dt>400-088-6888</dt>
							<dd>24小时客服热线(仅收市话费)</dd>
							<dd>
								<div>
									<a><img src="" />

									</a>
								</div>
							</dd>

						</dl>

					</div>
				</div>
				<div class="foot_note_box">
					<div class="foot_note_wrap">
						<div class="foot_note_con">
							<span class="foot_logo"><img src="img/mi-logo.png" width="38px" height="38px"></span>
							<span class="foot_note_txt">
							<a>大米网</a><h>|</h><a>MIUI</a><h>|</h><a>米聊</a><h>|</h><a>多看书城</a><h>|</h><a>大米路由器</a><h>|</h><a>大米后院</a><h>|</h><a>大米天猫店</a><h>|</h><a>大米淘宝直营店</a><h>|</h><a>大米网盟</a><h>|</h><a>问题反馈</a><h>|</h><a>Select Region</a>
						    <a> 5555555号</a>
						</span>
						</div>

					</div>
				</div>
			</div>
</div>-->
		</div>
		

		<script type="text/javascript">
		onload=function(){
		
			
		  var login = document.getElementById("login");
		  var register = document.getElementById("register");
		   var phone = "${phone_num}";
		  
		   if(phone!=""){
			  
			   login.style.display="none";
			   register.innerHTML ="用户  : " + phone;
				
		   }
		   
		   
		   
		var sumc =0;
		var pro_quantity = document.getElementsByClassName("pro_quantity");
		for(var i = 0;i<pro_quantity.length;i++){
		   sumc=parseInt(sumc)+parseInt(pro_quantity[i].innerHTML);
			}
		
		document.getElementById("goods_num").innerHTML=sumc;
		
		
		
		}
		
	
		</script>
		
		
		
			<script type="text/javascript">
				var menu_li = document.getElementById("menu_ul")
				var menu_li_a = menu_li.getElementsByTagName("a");
				for(var i = 0; i < menu_li_a.length; i++) {
					menu_li_a[i].onmouseover = function() {
						for(var i = 0; i < menu_li_a.length; i++) {
							menu_li_a[i].className = "";
						}

						this.className = "bottom_color";

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
			
              
               
				
                var lists = document.getElementsByClassName("list");
                var x = document.getElementsByClassName("banner_menu_content");
                for(var i = 0;i<lists.length;i++){
                	lists[i].index=i;
                	lists[i].onmousemove=function(){
                		  for(var i = 0;i<lists.length;i++){
                		  	x[i].style.display="none";
                		}
                		  x[this.index].style.display="block";
                	}
                	lists[i].onmouseout=function(){
                		  for(var i = 0;i<lists.length;i++){
                		  	x[i].style.display="none";
                		}
                		 
                	}
                	
                }
               
				
				var show_1 = document.getElementById("show_1");
				var show_2 = document.getElementById("show_2");
				var show_3 = document.getElementById("show_3");
				var show_4= document.getElementById("show_4");
				var show_5 = document.getElementById("show_5");
				var show_6 = document.getElementById("show_6");
				
				 show_1.onmousemove=function(){
				 	show_1.style.display="block";
				 }
				show_1.onmouseout=function(){
				 	show_1.style.display="none";
				 }
				 show_2.onmousemove=function(){
				 	show_2.style.display="block";
				 }
				show_2.onmouseout=function(){
				 	show_2.style.display="none";
				 }
				 show_3.onmousemove=function(){
				 	show_3.style.display="block";
				 }
				show_3.onmouseout=function(){
				 	show_3.style.display="none";
				 }
				 show_4.onmousemove=function(){
				 	show_4.style.display="block";
				 }
				show_4.onmouseout=function(){
				 	show_4.style.display="none";
				 }
				 show_5.onmousemove=function(){
				 	show_5.style.display="block";
				 }
				show_5.onmouseout=function(){
				 	show_5.style.display="none";
				 }
				 show_6.onmousemove=function(){
				 	show_6.style.display="block";
				 }
				show_6.onmouseout=function(){
				 	show_6.style.display="none";
				 }
				
				var now = 1; // 表示显示图片的下标
				function go() {
					var tu = document.getElementsByName('tu');
					var shu = document.querySelectorAll('.abc');
					for(var i = 0; i < tu.length; i++) {
						tu[i].style.display = 'none';
						shu[i].style.background = '';
					}
					tu[now].style.display = 'block';
					shu[now].style.background = 'white';
					now++;
					if(now == tu.length)
						now = 0;
				}
				t = window.setInterval(go, 2000);

				function ting() {
					window.clearInterval(t);
				}

				function goon() {
					t = window.setInterval(go, 2000);
				}

				function show(a) {
					window.clearInterval(t);
					now = a + 1;
					if(now == 8)
						now = 0;
					var tu = document.getElementsByName('tu');
					var shu = document.querySelectorAll('.abc');
					for(var i = 0; i < tu.length; i++) {
						tu[i].style.display = 'none';
						shu[i].style.background = '';
					}
					tu[a].style.display = 'block';
					shu[a].style.background = 'white';
				}

				function go1(a) {
					var x = document.querySelectorAll('#car_content');

					if(x[a].style.display == "none") {
						x[a].style.display = "block";
					} else {
						x[a].style.display = "none";
					}

				}
				
				var find_input = document.getElementById("find_input");
				var likego= document.getElementById("likego");
				likego.onclick=function(){
					var find_inputval = find_input.value;
					if(find_inputval==""){
						alert("请输入您要搜索的内容")
					}else{
					likego.href="find.do?method=findbylike&like="+find_inputval;
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
					
		       count=count+1*num[i].innerHTML;
						}
					}
					
					document.getElementById("money").innerHTML=sum;
					document.getElementById("total_num").innerHTML=count;
				}
				function quanxuan()
				{
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
			
			var head_car_text = document.getElementsByClassName("head_car_text");
			head_car_text[0].onclick=function(){
				location="shoppingcar.jsp";
			}
			

				
			</script>
	</body>

</html>