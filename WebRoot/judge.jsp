<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head lang="en">
		<meta charset="UTF-8">
		<title>华为商城（VMALL.COM）_华为手机、荣耀手机、官网正品保障</title>
		<link rel="stylesheet" href="css/sy.css" />
		<link rel="stylesheet" href="css/style_first.css" />
		<link rel="stylesheet" href="css/judge.css" />
		<link rel="stylesheet" href="css/goodsdetail.css" />

		<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
		<!--<script src="js/jquery.animate-colors-min.js"></script>-->
		<script src='js/scroll.1.3.js' type="text/javascript"></script>
		<!--左右轮播js -->
		<script type="text/javascript" src='js/main.js'></script>

		<style type="text/css">
		  .uploadImgBtn {

        width: 100px;
        height: 100px;
        cursor: pointer;
        position: relative;
        background: url("img/add_pic.png") no-repeat;
        -webkit-background-size: cover;
        background-size: cover;
        float:left;
         border-right: 1px solid #dedede;
    }

    .uploadImgBtn .uploadImg {
        position: absolute;
        right: 0;
        top:0;
        width: 100%;
        height: 100%;
        opacity: 0;
        cursor: pointer;
    }
    //这是一个用做回显的盒子的样式
    .pic{
        width: 100px;
        height: 100px;
       
       
        
    }
    .pic img {
        width: 100px;
        height: 100px;
        float: left;
         border-right: 1px solid #dedede;
    }
		</style>

	</head>

	<body>
		<div class="head_box">
			<div id="head_wrap">
				<div id="head_nav">
					<a class="head_nav_a">首页</a>
					<span>|</span>
					<a class="head_nav_a">华为官网</a>
					<span>|</span>
					<a class="head_nav_a">荣耀官网</a>
					<span>|</span>
					<a class="head_nav_a">花粉俱乐部</a>
					<span>|</span>
					<a class="head_nav_a">帮助中心</a>
					<span>|</span>
					<a class="head_nav_a">V码(优购码)</a>
					<span>|</span>
					<a class="head_nav_a">企业购</a>
					<span>|</span>
					<a class="head_nav_a">Select Region</a>
				</div>

				<div id="head_right">
					<div id="head_landing">
						<a class="head_nav_a">请登录</a>
						&nbsp;&nbsp;
						<a class="head_nav_a">注册</a>
						&nbsp;
						<span>|</span> &nbsp;
						<a class="head_nav_a">我的订单</a>
					</div>
					<div id="head_car">

						<img src="img/pic-car_1.png" />
						<a class="head_car_text" onmouseover="showhd()" onmouseout="hd()">购物车（0）</a>
						<div id="car_content" onmouseover="showhd()" onmouseout="hd()">
							<br />
							<img src="img/kongkong.png" />
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="main_head_box">
			<div id="menu_wrap">
				<div id="menu_logo">
					<img src="img/logomain.png">
				</div>
				<div id="menu_nav">
					<ul id="menu_ul">
						<li>
							<a class="">华为专区</a>
						</li>
						<li>
							<a class="">荣耀专区</a>
						</li>
						<li>
							<a class="">华为P20</a>
						</li>

						<li>
							<a class="">荣耀V10</a>
						</li>
						<li>
							<a class="">nova3</a>
						</li>
						<li>
							<a class="">荣耀10</a>
						</li>

					</ul>
				</div>
				<div id="find_wrap">
					<div id="find_bar">
						<input type="text" id="find_input" placeholder="请输入您要搜索的内容" style="font-size: 12px;">
					</div>
					<div id="find_but"><img src="img/zoom.jpg" /></div>
				</div>
			</div>
		</div>

		<div id="content_middle">
			<div class="next_head">
				<div class="head_middle">
					<span style="font-size: 18px;line-height: 50px;">评价订单</span>
					<span style="padding-left: 18px;font-size: 14px;color: #BBB;">订单编号：</span>
					<span id="goodscode" style="font-weight: normal;font-size: 14px;color: #333;">2643781414</span>
					<span id="timer_now" style="padding-left: 18px;font-size: 12px;color: #BBB;"></span>

					

					<div class="head_right" onclick="trans()" >
						<button id="sumbitjudge">提交</button>
					</div>

				</div>
			</div>

			<div id="middle_judge">
				<div class="middle_left">
					<p id="p_pic">
						<img src="demo/800_800_1527925630247mp.jpg" />
					</p>
					<p id="goodsname_judge">超级炫酷手机-华为</p>
					<p id="goods_price_judge">￥1988.00</p>
				</div>

				<div id="middle_right">
					<div style="margin-top: 40px;">
						<span class="des_word">商品评分&nbsp;&nbsp;:</span>
						<img style="margin-left: 40px;" src="img/judge_rank.png" /><span style="padding-left: 3px;font-size: 12px;color: #BBB;">5分</span>
					</div>

					<form method="post" id="mj" name="mj"  enctype="multipart/form-data">
						<div style="margin-top: 40px;">
							<div style="float: left;">
								<span style="display: block;margin-top: 0px;" class="des_word">写&nbsp;评&nbsp;价&nbsp;&nbsp;&nbsp;:</span>
							</div>
							<div style="float: left;">
								<textarea id="content_judge" placeholder="评价在10字以上就有机会获得5-20积分" class="textarea"></textarea>
							</div>

							<div style="clear: both;"></div>
						</div>
                        
						<div id="send_pic" style="margin-top: 30px;">
							<div style="float: left;">
							<span style="display:inline-block;margin-top: 0px;" class="des_word">上传图片&nbsp;&nbsp;:</span>
							</div>
							<div style="float: left;">
							<div id="appear" style="border:1px solid #dedede;height:100px;width: 717px;">
								<div class="uploadImgBtn" id="uploadImgBtn">
									<input class="uploadImg" type="file" name="file" multiple id="file">
								</div>

							</div>
							</div>
						</div>

					</form>

					
					<script type="text/javascript">
					    var mj = document.getElementById("mj");
					    var head_right = document.getElementById("head_right");
					    var content_judge = document.getElementById("content_judge");
					   
					    function trans(){
					      var textwords = content_judge.value;
					      if(textwords==""){
					    	  alert("您的评论未填写");
					      }else{
					      var ac = "JudgeServlet.do?method=judge&goods_name=huawei&phone_num=18865678583&judge_words="+textwords;
					    	mj.action= ac;
					    	mj.submit();
					      }
					    }
					
					
					</script>
					
					
					
					
				</div>

				<div style="clear: both;"></div>
			</div>
			
			
			
			<div style="width: 100%;height: 60px;margin-top:20px">
					<h2 style="color: #a4a4a4;margin-left:650px">热门评论</h2>
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
			

			<div style="width: 1200px; margin: 0 auto;  margin-bottom: 30px;"> <img src="img/20180718170944826.jpg" /> </div>
			<div><img src="img/bottom_final.png" /></div>
		</div>

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
		</script>
		<script>
			$(document).ready(function() {
				//为外面的盒子绑定一个点击事件
				$("#uploadImgBtn").click(function() {
					/*
					1、先获取input标签
					2、给input标签绑定change事件
					3、把图片回显
					 */
					//            1、先回去input标签
					var $input = $("#file");
					console.log($input)
						//            2、给input标签绑定change事件
					$input.on("change", function() {
						console.log(this)
							//补充说明：因为我们给input标签设置multiple属性，因此一次可以上传多个文件
							//获取选择图片的个数
						var files = this.files;
						var length = files.length;
						console.log("选择了" + length + "张图片");
						//3、回显
						$.each(files, function(key, value) {
							//每次都只会遍历一个图片数据
							var div = document.createElement("div"),
								img = document.createElement("img");
							div.className = "pic";

							var fr = new FileReader();
							fr.onload = function() {
								img.src = this.result;
								div.appendChild(img);
								document.getElementById("appear").appendChild(div);
							}
							fr.readAsDataURL(value);
						})

					})

					//4、我们把当前input标签的id属性remove
					$input.removeAttr("id");
					//我们做个标记，再class中再添加一个类名就叫test
					var newInput = '<input class="uploadImg test" type="file" name="file" multiple id="file">';
					$(this).append($(newInput));

				})

			})
		</script>

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
		
		
	for(var i = 0;i<json.length;i++){
		var request = new XMLHttpRequest();
		//回调函数
		request.onreadystatechange = function() {
			if (request.readyState == 4 && request.status == 200) {
				   var ret2 = request.responseText;
				   var json2 = eval(ret2);
				   //alert(ret2);
				
				    var img = "";
					inner =
					"<li style='height:250px;border-bottom: solid 1px #a4a4a4;'> <div style='margin-top:20px;' class='touxiang'><img src='img/touxiang.png' style='height: 104px;width: 104px;display: block;' /> <span class='username'>"
					+ json2[0].phone_num
					+ "</span></div><div><div style='float: left;margin-left: 20px;'><img style='margin-top:20px;' src='img/judge_rank.png' /></div><br /><br /><br /><div style='float: left; margin-left: 30px;'><span  class='judge_content'>"
					+ json2[0].judge_words
					+ "</span></div><br /><div  class='judge_pic'>"; 
					for(var j = 0;j<json2.length;j++){
						
						img = img+"<img src='judgeimg/"+json2[j].judge_pic+"' /> ";
					}
					
					inner = inner+img+"<br /><div style='margin-top:20px;width:180px' class='time'>"+json2[0].judge_time+"</div></div></div><div style='clear: both;'></div></li>";
				
				
				var ul = document.getElementById("product_listee");
				ul.innerHTML = ul.innerHTML+inner;
				

			}
		}
		
		request.open("get",
				"JudgeServlet.do?method=userjudge&goodsname=huawei&phone_num="+json[i].phone_num, false);
		request.send(null);
			
		
		}	
		
	//alert(document.body.offsetHeight);
	var show = document.getElementById("timer_now");
	setInterval(function() {
		var time = new Date(); // 程序计时的月从0开始取值后+1   
		var m = time.getMonth() + 1;
		var t = time.getFullYear() + "-" + m + "-" +
			time.getDate() + " " + time.getHours() + ":" +
			time.getMinutes() + ":" + time.getSeconds();
		show.innerHTML = t;
	}, 1000);
	
	
	 var middle_right = document.getElementById("middle_right");
	 var sumbitjudge = document.getElementById("sumbitjudge");
	 var head_right = document.getElementsByClassName("head_right");
	 var request = new XMLHttpRequest();
	request.open("get",
			"JudgeServlet.do?method=finduser&phone_num=18865678583");
	request.send(null);
	//回调函数
	request.onreadystatechange = function() {

		if (request.readyState == 4 && request.status == 200) {
			var ret = request.responseText;
			var j = ret;
			if(j>0){
				middle_right.style.display="none";
				sumbitjudge.setAttribute("disabled",true);
				sumbitjudge.innerHTML = "您已评论";

			}

		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	}
	
	
	

</script>


 

	</body>

</html>
