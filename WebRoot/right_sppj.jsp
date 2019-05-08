<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
	</head>
<style>
	#head{
		width: 100%;
		height:90px;
		line-height: 30px;

	}
	.now {
			height: 20px;
			width: auto;
			color: #A9A9A9;
			float: left;
			position: relative;
			left: 780px;
			top: 70px;
			line-height: 10px;
			font-size: 12px;
			margin-left: 10px;
		}
		
		.now div:hover {
			color: black;
		}
	
	.xian{
		
		width:960px;
		height: 20px;
		margin-left: 20px;
		margin-top: 10px;
		border-style:none;
         border-top:solid 1px #808080;
	}
	#nr{
		width: 960px;
		height: 30px;
		line-height: 12px;
		font-size: 12px;
		color: #A9A9A9;
	
		background: #DCDCDC;
		margin-left: 20px;
	}
	th{
		width: 240px;
		border: none;
		border-left: solid 1px #A9A9A9;
		font-weight:300; font-size:12px;
	}
	#bnr{
		width: 960px;
		height: 200px;
		color: #DCDCDC;
		margin-left: 20px;
		margin-top: 5px;
	
	}
	.list-group-empty{
		width: 960px;
		height: 30px;
		position: relative;
		top: 100px;
		line-height: 20px;
		text-align: center;
	}
	.attention-area{
		float: right;
		height: 30px;
		width: 250px;
	}
	
</style>
	<body>
		<div id="head">
			<span class="wb" style="position: relative;top:45px;left: -60px;font-size: 20px;">商品评价</span>
			<div class="now">最近六个月商品</div>
		</div>
		<div class="xian"></div>
		<div id="nr">
			<table>
				<thead>
					<th class="bt">商品</th>
					<th class="bt">评价</th>
					<th class="bt">评价经验值</th>
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