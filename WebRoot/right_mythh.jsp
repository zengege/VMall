<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
	</head>
	<style>
		#head {
			width: 100%;
			height: 90px;
			line-height: 30px;
		}
		
		.xian {
			width: 960px;
			height: 20px;
			margin-left: 20px;
			margin-top: 10px;
			border-style: none;
			border-top: solid 1px #808080;
		}
		.bxian{
			width: 960px;
			height: 20px;
			font-size: 14px;
	
			background: wheat;
		}
		
		#nr {
			width: 960px;
			height: 30px;
			line-height: 12px;
			font-size: 12px;
			color: #A9A9A9;
			background: #DCDCDC;
			margin-top: 80px;
			margin-left: 20px;
		}
		
		th {
			width: 240px;
			border: none;
			border-left: solid 1px #A9A9A9;
			font-weight: 300;
			font-size: 12px;
		}
		
		#bnr {
			width: 960px;
			height: 200px;
			color: #DCDCDC;
			margin-left: 20px;
			margin-top: 5px;
		}
		
		.list-group-empty {
			width: 960px;
			height: 30px;
			position: relative;
			top: 100px;
			line-height: 20px;
			text-align: center;
		}
		
		.attention-area {
			float: right;
			height: 30px;
			width: 250px;
		}
	</style>

	<body>
		<div id="head">
			<span class="wb" style="position: relative;top:45px;left: 35px;font-size: 20px;">我的退换货</span>
		</div>
		<div class="xian">

				<div class="bxian">
					<div class="prevention-fraud">
						<img src="img/!.jpg" height="14px" width="14px" style="position: absolute;left:27px;top: 110px;" /><p class="prevention-fraud-tips" style="display: inline;position: absolute;left: 43px;top: 95px;">注意：华为商城不会以订单异常、系统升级为由，要求您点击任何链接进行退款！ 请谨防<span>钓鱼链接或诈骗电话</span>！</p>
					</div>
				</div>
			
		</div>
		<div id="nr">
			<table>
				<thead>
					<th class="bt">退换货编号</th>
					<th class="bt">订单号</th>
					<th class="bt">申请时间</th>
					<th class="bt">状态</th>
					<th class="bt">操作</th>
				</thead>
			</table>
			<div id="bnr">
				<div class="list-group-empty">您暂时没有相关记录。</div>
			</div>
			<div class="list-group-page hide">
				<div class="pager" id="list-pager"></div>
			</div>

		</div>
	</body>

</html>