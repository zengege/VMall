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
			<span class="wb" style="position: relative;top:45px;left: 35px;font-size: 20px;">站内信</span>
		</div>
		<div class="xian"></div>
		<div id="nr">
			<table>
				<thead>
					<th class="bt">类型</th>
					<th class="bt">标题</th>
					<th class="bt">时间</th>
					<th class="bt">操作</th>
				</thead>
			</table>
			<div id="bnr">
<div class="list-group-empty">您暂时没有相关记录。</div>
			</div>
			<div class="list-group-page hide">
		<div class="pager" id="list-pager"></div>
	</div>
	<div class="attention-area">
	    <em>更多精彩内容，请关注：</em>
	    <a class="atte-tsina" title="新浪微博" href="http://e.weibo.com/shophuawei" target="_blank"><img src="img/微博.PNG" width="25px" height="25px"/></a>
	    <a class="atte-tqq" title="腾讯微博" href="http://e.t.qq.com/shophuawei" target="_blank"><img src="img/腾讯微博.PNG" width="25px" height="25px"/></a>
	</div>
		</div>
	</body>

</html>