<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/showgoods.css" />
<link rel="stylesheet" href="css/sy.css" />

<script src="js/down.js" type="text/javascript" charset="utf-8"></script>
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
			var likego= document.getElementById("likego");
			likego.onclick=function(){
				var find_inputval = find_input.value;
				if(find_inputval==""){
					alert("请输入您要搜索的内容")
				}else{
				likego.href="find.do?method=findbylike&like="+find_inputval;
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
	</div>
	</div>
	<div class="hr_10"></div>
	<div class="g" id="haha">
		<div class="breadcrumb-area_fcn">
			<a href="#" title="首页">首页</a>><span id="big_type">${map.list[0].big_type}</span><span
				id="small_type"></span>

		</div>
	</div>
	<div class="hr_10" id="hr_10_1"></div>
	<div class="layout" id="layout_1">
		<div class="pro-cate-area" id="kk">
			<!-- 20140726-商品类别-属性-start -->
			<div class="pro-cate-attr">
				<div class="p-title">分类：</div>
				<div class="p-default">
					<ul>
						<li id="first-category" class="selected"><a href="#">全部</a></li>
						<!--<li class="selected"><a href="javascript:;">全部</a></li>-->
					</ul>
				</div>
				<!-- 二级虚拟分类 -->
				<div class="p-values" id="smp_smalltype" style="display: none;">
					<ul class="clearfix">
						<li><a href="find.do?method=findbysmall_type&small_type=荣耀">荣耀</a></li>
						<li><a
							href="find.do?method=findbysmall_type&small_type=HUAWEI P系列">HUAWEI
								P系列</a></li>
						<li><a
							href="find.do?method=findbysmall_type&small_type=荣耀畅玩系列">荣耀畅玩系列</a></li>
						<li><a
							href="find.do?method=findbysmall_type&small_type=HUAWEI Mate系列">HUAWEI
								Mate系列</a></li>
						<li><a
							href="find.do?method=findbysmall_type&small_type=HUAWEI nova系列">HUAWEI
								nova系列</a></li>
						<li><a
							href="find.do?method=findbysmall_type&small_type=HUAWEI 麦芒系列">HUAWEI
								麦芒系列</a></li>
					</ul>
				</div>

				<div class="p-values xixi" id="nbp_smalltype" style="display: none;">
					<ul class="clearfix">
						<li><a href="find.do?method=findbysmall_type&small_type=平板电脑">平板电脑</a></li>
						<li><a
							href="find.do?method=findbysmall_type&small_type=笔记本电脑">笔记本电脑</a></li>
						<li><a
							href="find.do?method=findbysmall_type&small_type=笔记本配件">笔记本配件</a></li>
					</ul>
				</div>

				<div class="p-values xixi" id="smw_smalltype" style="display: none;">
					<ul class="clearfix">
						<li><a href="find.do?method=findbysmall_type&small_type=手环">手环</a></li>
						<li><a href="find.do?method=findbysmall_type&small_type=手表">手表</a></li>
						<li><a href="find.do?method=findbysmall_type&small_type=VR">VR</a></li>
					</ul>
				</div>
			</div>

			<div class="pro-cate-sort">
				<div class="p-title">排序：</div>
				<div class="p-default">
					<ul>
						<li id="sort-0" class="selected"><a href="#">默认</a></li>
					</ul>
				</div>

				<div class="p-values">
					<div class="p-expand">
						<ul class="clearfix">
							<!-- 升序选择（从低到高）： sort-asc selected   降序选择（从高到低）： sort-desc selected -->
							<li id="sort-1"><a href="#" id="sort-price">价格<s></s></a></li>
							<li id="sort-2"><a href="#" id="sort-eval">评价数<s></s></a></li>
							<li id="sort-3"><a href="#" id="sort-added">上架时间<s></s></a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- 20140726-商品类别-排序-end -->
		</div>
	</div>

	<div class="layout" id="layout_2">
		<div class="channel_list">
			<div class="pro_list_clearfix">
				<ul id="showgoods">
					<li>
						<div class='pro_panels'>
							<p class='p_img' src=''></p>
							<p class='p_name'></p>
							<p class='p_price'></p>
							<p class='p_botton'></p>
						</div>
					</li>

				</ul>
			</div>
		</div>
		<div id="list-pager-36" class="pager">

			<ul id="page_ul">

				<li><a id="first" href="">|&lt;</a></li>
				<li><a id="pre" href="">&lt;</a></li>
				<span id="yeshu"> </span>
				<li><a id="next" href="">&gt;</a></li>
				<li><a id="last" href="">&gt;|</a></li>
			</ul>
		</div>


	</div>
	<div id="hr_40"></div>
	
			<img src="img/bottom.png" style="margin-top: 40px;margin-left:2px">
	
</body>
<script>
	onload = function() {
		
		
		
		
			
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
		
		
		

		var method = "${method}";

		var showgoods = document.getElementById("showgoods");

		var yeshu = document.getElementById("yeshu");

		var page_ul = document.getElementById("page_ul");

		var oldmethod = "${sessionScope.oldmethod}";

		var sort_price = document.getElementById("sort-price");

		var big_type = document.getElementById("big_type");

		var small_type = document.getElementById("small_type");

		var inner1 = "";

		var inner2 = "";

		var pagecount = ${map.pagecount};

		var goods_big_type = "${map.list[0].big_type}";
		if ("手机" == goods_big_type) {
			document.getElementById("smp_smalltype").style.display = "block";
		} else if ("笔记本平板" == goods_big_type) {
			document.getElementById("nbp_smalltype").style.display = "block";
		} else {
			document.getElementById("smw_smalltype").style.display = "block";
		}

		if ("findbyorderby" == method) {
			var odd_even = "";

			odd_even = "${requestScope.odd_even}";

			if ("odd" == odd_even) {
				odd_even = "even";
			} else {
				odd_even = "odd";
			}

			if ("findbybig_type" == oldmethod) {

				sort_price.href = "find.do?method=findbyorderby&big_type="
						+ "${map.list[0].big_type}"
						+ "&oldmethod=findbybig_type&odd_even=" + odd_even;

				if ("odd" == odd_even) {
					odd_even = "even";
				} else {
					odd_even = "odd";

				}

				if (pagecount == 1) {
					page_ul.innerHTML = inner2;
				} else {

					document.getElementById("first").href = "find.do?method=findbyorderby&big_type="
							+ "${map.list[0].big_type}"
							+ "&oldmethod=findbybig_type&odd_even="
							+ odd_even
							+ "&page=1";
					document.getElementById("pre").href = "find.do?method=findbyorderby&big_type="
							+ "${map.list[0].big_type}"
							+ "&oldmethod=findbybig_type&odd_even="
							+ odd_even
							+ "&page=" + (${map.page} - 1);
					document.getElementById("next").href = "find.do?method=findbyorderby&big_type="
							+ "${map.list[0].big_type}"
							+ "&oldmethod=findbybig_type&odd_even="
							+ odd_even
							+ "&page=" + (${map.page} + 1);
					document.getElementById("last").href = "find.do?method=findbyorderby&big_type="
							+ "${map.list[0].big_type}"
							+ "&oldmethod=findbybig_type&odd_even="
							+ odd_even
							+ "&page=" + ${map.pagecount};

					for (var p = 1; p <= pagecount; p++) {
						inner2 = inner2
								+ "<a class='page' href='find.do?method=findbyorderby&big_type="
								+ "${map.list[0].big_type}"
								+ "&oldmethod=findbybig_type&odd_even="
								+ odd_even + "&page=" + p
								+ "'><li class='page-number'>" + p
								+ "</li></a>";
					}

					yeshu.innerHTML = inner2;

				}

			}

			else if ("findbysmall_type" == oldmethod) {

				big_type.innerHTML = "<a href='find.do?method=findbybig_type&big_type="
						+ "${map.list[0].big_type}"
						+ "'>"
						+ "${map.list[0].big_type}" + "</a>> ";
				small_type.innerHTML = "${map.list[0].small_type}";
				sort_price.href = "find.do?method=findbyorderby&small_type="
						+ "${map.list[0].small_type}"
						+ "&oldmethod=findbysmall_type&odd_even=" + odd_even;

				if ("odd" == odd_even) {
					odd_even = "even";
				} else {
					odd_even = "odd";
				}

				if (pagecount == 1) {
					page_ul.innerHTML = inner2;
				} else {
					document.getElementById("first").href = "find.do?method=findbyorderby&small_type="
							+ "${map.list[0].small_type}"
							+ "&oldmethod=findbysmall_type&odd_even="
							+ odd_even + "&page=1";
					document.getElementById("pre").href = "find.do?method=findbyorderby&small_type="
							+ "${map.list[0].small_type}"
							+ "&oldmethod=findbysmall_type&odd_even="
							+ odd_even + "&page=" + (${map.page} - 1);
					document.getElementById("next").href = "find.do?method=findbyorderby&small_type="
							+ "${map.list[0].small_type}"
							+ "&oldmethod=findbysmall_type&odd_even="
							+ odd_even + "&page=" + (${map.page} + 1);
					document.getElementById("last").href = "find.do?method=findbyorderby&small_type="
							+ "${map.list[0].small_type}"
							+ "&oldmethod=findbysmall_type&odd_even="
							+ odd_even + "&page=" + ${map.pagecount};
					for (var p = 1; p <= pagecount; p++) {
						inner2 = inner2
								+ "<a class='page' href='find.do?method=findbyorderby&small_type="
								+ "${map.list[0].small_type}"
								+ "&oldmethod=findbysmall_type&odd_even="
								+ odd_even + "&page=" + p
								+ "' ><li class='page-number'>" + p
								+ "</li></a>";
					}
					yeshu.innerHTML = inner2;
				}

			}
		}

		else if ("findbysmall_type" == method) {
			big_type.innerHTML = "<a href='find.do?method=findbybig_type&big_type="
					+ "${map.list[0].big_type}"
					+ "'>"
					+ "${map.list[0].big_type}" + "</a>> ";
			small_type.innerHTML = "${map.list[0].small_type}";
			sort_price.href = "find.do?method=findbyorderby&small_type="
					+ "${map.list[0].small_type}"
					+ "&oldmethod=findbysmall_type&odd_even=odd";

			if (pagecount == 1) {
				page_ul.innerHTML = inner2;
			} else {
				document.getElementById("first").href = "find.do?method=findbysmall_type&small_type="
						+ "${map.list[0].small_type}" + "&page=1";
				document.getElementById("pre").href = "find.do?method=findbysmall_type&small_type="
						+ "${map.list[0].small_type}"
						+ "&page="
						+ (${map.page} - 1);
				document.getElementById("next").href = "find.do?method=findbysmall_type&small_type="
						+ "${map.list[0].small_type}"
						+ "&page="
						+ (${map.page} + 1);
				document.getElementById("last").href = "find.do?method=findbysmall_type&small_type="
						+ "${map.list[0].small_type}"
						+ "&page="
						+ ${map.pagecount};
				for (var p = 1; p <= pagecount; p++) {
					inner2 = inner2
							+ "<a class='page' href='find.do?method=findbysmall_type&small_type="
							+ "${map.list[0].small_type}" + "&page=" + p
							+ "' ><li class='page-number'>" + p + "</li></a>";
				}
				yeshu.innerHTML = inner2;
			}
		}

		else if ("findbybig_type" == method) {
			sort_price.href = "find.do?method=findbyorderby&big_type="
					+ "${map.list[0].big_type}"
					+ "&oldmethod=findbybig_type&odd_even=odd";

			if (pagecount == 1) {
				page_ul.innerHTML = inner2;
			} else {
				document.getElementById("first").href = "find.do?method=findbybig_type&big_type="
						+ "${map.list[0].big_type}" + "&page=1";
				document.getElementById("pre").href = "find.do?method=findbybig_type&big_type="
						+ "${map.list[0].big_type}"
						+ "&page="
						+ (${map.page} - 1);
				document.getElementById("next").href = "find.do?method=findbybig_type&big_type="
						+ "${map.list[0].big_type}"
						+ "&page="
						+ (${map.page} + 1);
				document.getElementById("last").href = "find.do?method=findbybig_type&big_type="
						+ "${map.list[0].big_type}"
						+ "&page="
						+ ${map.pagecount};

				for (var p = 1; p <= pagecount; p++) {
					inner2 = inner2
							+ "<a class='page' href='find.do?method=findbybig_type&big_type="
							+ "${map.list[0].big_type}" + "&page=" + p
							+ "' ><li class='page-number'>" + p + "</li></a>";
				}
				yeshu.innerHTML = inner2;
			}

		} else if ("findbylike" == method) {
			if (pagecount == 1) {
				page_ul.innerHTML = inner2;
			} else {
				document.getElementById("first").href = "find.do?method=findbylike&like="
						+ "${map.like}" + "&page=1";
				document.getElementById("pre").href = "find.do?method=findbylike&like="
						+ "${map.like}" + "&page=" + (${map.page} - 1);
				document.getElementById("next").href = "find.do?method=findbylike&like="
						+ "${map.like}" + "&page=" + (${map.page} + 1);
				document.getElementById("last").href = "find.do?method=findbylike&like="
						+ "${map.like}" + "&page=" + ${map.pagecount};

				for (var p = 1; p <= pagecount; p++) {
					inner2 = inner2
							+ "<a class='page' href='find.do?method=findbylike&like="
							+ "${map.like}" + "&page=" + p
							+ "'><li class='page-number'>" + p + "</li></a>";
				}
				yeshu.innerHTML = inner2;
			}
			document.getElementById("layout_1").style.display = "none";
			document.getElementById("haha").innerHTML = "<h2>搜索&nbsp;&nbsp;<span class='red f14'>["
					+ "${map.like}"
					+ "]</span>&nbsp;&nbsp;共找到商品<span id='record-totalRow'>"
					+ "${map.count}" + "</span>件</h2> ";

		}

		document.getElementById("first-category").getElementsByTagName("a")[0].href = "find.do?method=findbybig_type&big_type="
				+ "${map.list[0].big_type}";

				var time = 0 ;
		<c:forEach items = "${map.list}" var="goods">
		time = time +1 ;
		inner1 = inner1
				+ "<li><div class='pro_panels'><p class='p_img' ><img src='"+"${goods.show_pic}"+"/1.jpg'></p><p class='p_name'><a href='#'><span>"
				+ "${goods.goods_name}"
				+ "</span></a></p><p class='p_price'>￥${goods.lowest_price}起</p><p class='p_botton'><a  href='GoodsServlet.do?goodsname="
				+ "${goods.goods_name}"
				+ "&method=goodsdetail&method2=goodsdetailpic'>选购</a></p></div></li>";
		</c:forEach>
		if(time == 0 ){
			document.getElementById("haha").innerHTML = "你是傻子吗 ，没有相关内容";
			page_ul.innerHTML =  inner2;
		}
		showgoods.innerHTML = inner1;

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
	
</script>
</html>




