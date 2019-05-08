<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>首页_个人中心_华为商城</title>
	</head>


		<frameset rows='850,200' >
			

			<frameset cols='210,1200'  frameborder="no">
				<frame name='lefthere' src="left.jsp" scrolling="no"  noresize>
				</frame>
				<frame name='righthere' src="mymall.jsp"  scrolling="no"  noresize>
				</frame>
			</frameset>
	<frame src='foot.jsp' name='foot'  frameborder="no" scrolling="no"  noresize ></frame>

		</frameset>
<script>
	
	
	window.onload=function(){
     changeDivHeight();
  }
  window.onresize=function(){
      changeDivHeight();
  }
  function changeDivHeight(){
      var h = document.documentElement.clientHeight;
 }
	
</script>

</html>