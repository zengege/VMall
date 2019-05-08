<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>收银台</title>
		<link rel="stylesheet" href="css/checkstand.css" />
		<script type="text/javascript" src="js/checkstand.js"></script>
		
	</head>
	<style type="text/css">

	</style>

	<body>
		<div id="main_div">
			<div class="logo_name clearfix">
				<a><img src="img/logo.png" /></a>
				<span class="i18n " name="msg_Checkout " style=" font: 14px/1.5 Microsoft YaHei, tahoma, arial;">收银台 </span>
			</div>

			<div class="cashier_orderInfo">
				<div id="success_pic"><img src="img/success_2.png" /></div>
				<div id="oderwords">
					<h4 id="words">提交订单成功，只差付款了~~~</h4>
					<div id="right_price">
						<span style="   font: 12px/1.5 Microsoft YaHei, tahoma, arial;">订单金额:</span>
						<span id="oder_price">6897.00</span>
					</div>
				</div>

				<div id="daojishi" style="float: left;">
					<span style="font: 13px/1.5 Microsoft YaHei, tahoma, arial;">请您在<span style=" color: #DA3232;font-weight: bold;" id="timer"></span>内完成付款，否则订单自动取消</span>
					<div id="oder_detail_2"><span style="cursor: pointer;">订单详情</span></div>
				</div>
				<div style="clear: both;"></div>

				<!--
                                 清除浮动
             -->

				<div id="detail_2" style="display: none;">
					<ul id="detail_ul">
						<li class="dispose-act"><span name="msg_sendNomber">订单编号：</span>
							<span style="color: #da3232;" id="bianhao">99920096447</span>
						</li>

						<li class="dispose-act"><span class="i18n" name="msg_takeInf">收货信息：</span><span>刘华</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>18821813044</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>湖南株洲市芦淞区建设街道湖南工业大学新校区26栋124</span>
						</li>

						<li class="dispose-act"><span class="i18n" name="msg_goodsName" id="ordername">商品名称：</span><span id="goodsdesc">荣耀Play 全网通 4GB+64GB（极光蓝）</span></li>

						<li class="dispose-act"><span class="i18n" name="msg_billInf">发票信息：</span><span>电子普通发票</span><span>个人</span>
						</li>

						<li class="dispose-act"><span class="i18n" name="msg_buyTime">购买时间：</span><span>2018-07-19 13:42</span></li>
					</ul>
				</div>

			</div>
			<div id="pay_div">
				<ul id="payTab">
					<li class="active" name="common_pay">
						<span>常&nbsp;&nbsp;&nbsp;&nbsp;用</span>
					</li>
					<li class="" name="third_pay">
						<span>平台支付</span>
					</li>
					<li class="" name="hb_pay">
						<span>分期支付</span>
					</li>
					<li id="last_li" class="" name="nwchain_pay">
						<span>网银支付</span>
					</li>
				</ul>
				<div id="pay_kind_div">
					<div style="display: block;" class="select_pay">
						<ul id="pay_a">

							<li class="active_li">
								<img src="img/ALIPAY.png" class="pic_pay">
								<img src="img/selected_3.png" class="selected" style="display: block;" />
							</li>

							<li class="dengdai_li">
								<img src="img/WXPAY.png" class="pic_pay">
								<img src="img/selected_3.png" class=" selected" />

							</li>
							<li class="dengdai_li">
								<img src="img/CCB.png" class="pic_pay">
								<img src="img/selected_3.png" class=" selected" />

							</li>
							<li class="dengdai_li">
								<img src="img/HUABEI.png" class="pic_pay">
								<img src="img/selected_3.png" class=" selected" />
							</li>
							<li class="dengdai_li">
								<img src="img/HUAWEIPAY.png" class="pic_pay">
								<img src="img/selected_3.png" class=" selected" />
							</li>
						</ul>

					</div>
					<div id="pay_2" class="select_pay" style="height: 170px;">
						<ul id="pay_b">

							<li class="dengdai_li">
								<img src="img/ALIPAY.png" class="pic_pay">
								<img src="img/selected_3.png" class="selected selected_1" />

							</li>

							<li class="dengdai_li">
								<img src="img/HUAWEIPAY.png" class="pic_pay">
								<img src="img/selected_3.png" class="selected selected_1" />

							</li>
							<li class="dengdai_li">
								<img src="img/BCM.png" class="pic_pay">
								<img src="img/selected_3.png" class="selected selected_1" />

							</li>
						</ul>

					</div>
					<div id="pay_3" class="select_pay" style="height: 170px;">
						<ul id="pay_c">

							<li class="dengdai_li">
								<img src="img/HUABEI.png" class="pic_pay">
								<img src="img/selected_3.png" class="selected selected_2"  />

							</li>

							<li class="dengdai_li">
								<img src="img/CMBLIFE.png" class="pic_pay">
								<img src="img/selected_3.png" class="selected selected_2" />

							</li>

						</ul>

					</div>
					<div id="pay_4" class="select_pay" class="pic_pay">
						<ul id="pay_d">

							<li class="dengdai_li">
								<img src="img/ALIPAY.png" class="pic_pay">
								<img src="img/selected_3.png" class="selected selected_3"  />

							</li>

							<li class="dengdai_li">
								<img src="img/WXPAY.png" class="pic_pay">
								<img src="img/selected_3.png" class="selected selected_3" />

							</li>
							<li class="dengdai_li">
								<img src="img/CCB.png" class="pic_pay">
								<img src="img/selected_3.png" class="selected selected_3" />

							</li>
							<li class="dengdai_li">
								<img src="img/HUABEI.png" class="pic_pay">
								<img src="img/selected_3.png" class="selected selected_3" />

							</li>
							<li class="dengdai_li">
								<img src="img/HUAWEIPAY.png" class="pic_pay">
								<img src="img/selected_3.png" class="selected selected_3" />

							</li>
						</ul>

					</div>
				</div>
			</div>
			
			
			
			<div style="margin: 0 auto; width: 1200px; margin-top: 20px;">
				<div id="ensure_pay">
					<a id="ensure_pay" style="background-position-y: 8px;"><span style="text-align: center;">确认支付</span></a>
				</div>
			</div>
			
			<div style="margin-top: 150px;">
				<img src="img/copyright.png" />
			</div>
			
			
			
		</div>
<form name=alipayment action=alipay.trade.page.pay.jsp method="post" id="biaodang" style="display:none"
			target="_blank">
			<div id="body1" class="show" name="divcontent">
				<dl class="content">
					<dt>商户订单号 ：</dt>
					<dd>
						<input id="WIDout_trade_no" name="WIDout_trade_no" />
					</dd>
					<hr class="one_line">
					<dt>订单名称 ：</dt>
					<dd>
						<input id="WIDsubject" name="WIDsubject" />
					</dd>
					<hr class="one_line">
					<dt>付款金额 ：</dt>
					<dd>
						<input id="WIDtotal_amount" name="WIDtotal_amount" />
					</dd>
					<hr class="one_line">
					<dt>商品描述：</dt>
					<dd>
						<input id="WIDbody" name="WIDbody" />
					</dd>
					<hr class="one_line">
					<dt></dt>
					<dd id="btn-dd">
						<span class="new-btn-login-sp">
							<button class="new-btn-login" type="submit"
								style="text-align: center;">付 款</button>
						</span> <span class="note-help">如果您点击“付款”按钮，即表示您同意该次的执行操作。</span>
					</dd>
				</dl>
			</div>
		</form>
	</body>
     <script type="text/javascript">
     var ensure_pay =document.getElementById("ensure_pay");
     ensure_pay.onclick=function(){
        	
        	var order_price = document.getElementById("oder_price").innerHTML;
        	
        	var bianhao = document.getElementById("bianhao").innerHTML;
        	var orderdesc = document.getElementById("goodsdesc").innerHTML;
        	var ordername = document.getElementById("ordername").innerHTML;
        	 document.getElementById("WIDout_trade_no").value=bianhao;
        	 document.getElementById("WIDsubject").value=ordername;
        	 document.getElementById("WIDtotal_amount").value=order_price;
        	 document.getElementById("WIDbody").value=orderdesc;
        	
        	 document.getElementById("biaodang").submit();
        	
        }
     
     </script>
</html>