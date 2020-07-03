<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jinshen.bean.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" href="css/registe.css"/>
<link rel="stylesheet" href="js/jQueryCalendar/calendar.css">
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />

    <!-- Custom CSS -->
    <link href="css/style.css" rel='stylesheet' type='text/css' />

    <!-- font-awesome icons CSS -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons CSS-->

    <!-- side nav css file -->
    <link href='css/SidebarNav.min.css' media='all' rel='stylesheet' type='text/css'/>
    <!-- js-->
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/modernizr.custom.js"></script>
    <!-- jQuery.print -->
	<script src="js/jQuery.print.js"></script>
<style>
.file-box {
    position: relative;
    display: inline-block;
}
.file-box img {
    width: 50px;
    height: 50px;
    border-radius: 50%;
    position: absolute;
    top: -30px;
    left: 0;
    display: inline-block;
    border: none;
}
.file-box .txt,.file-box .file {
    width: 70px;
    height: 36px;
    position: absolute;
    top: -20px;
    left: 100px;
    text-align: center;
}
.table1{width:60%; height:400px;margin-left:auto; margin-right:auto;padding:10px;border-collapse:collapse}
td,th{text-align:center;vertical-align:middle}
         tr{text-align:center}
</style>
<head>
    <meta charset="UTF-8">
    <title>输入采伐证材料</title>
    <link rel="stylesheet" href="js/bstable/css/bootstrap.min.css">
    <link rel="stylesheet" href="js/bstable/css/bootstrap-table.css">
    <link rel="stylesheet" href="css/all.css">

<script type="text/javascript">
function inputNull(form){
	for(i=0;i<form.length;i++){
            //form属性的elements的首字母e要小写
		if(form.elements[i].value == ""){ 
			alert("" + form.elements[i].placeholder + "不能为空");
			form.elements[i].focus();	
			return false;
		}
	}
	}
</script>
</head>
<body>
<main>
<!-- 下拉框代码 -->
				


</main>
<script type="text/javascript" src="static/js/jquery-1.12.4.min.js"></script>
<script src="js/bstable/js/bootstrap.min.js"></script>
<script src="js/bstable/js/bootstrap-table.js"></script>
<script src="js/bstable/js/bootstrap-table-zh-CN.min.js"></script>
<script>
//预览
function imgPreview(fileDom) {
	//判断是否支持FileReader
	if(window.FileReader) {
		var reader = new FileReader();
	} else {
		alert("您的设备不支持图片预览功能，如需该功能请升级您的设备！");
	}
	//获取文件
	var file = fileDom.files[0];
	var imageType = /^image\//;
	//是否是图片
	if(!imageType.test(file.type)) {
		alert("请选择图片！");
		return;
	}
	//读取完成
	reader.onload = function(e) {
		//获取图片dom
		var img = document.getElementById("preview");
		//图片路径设置为读取的图片
		img.src = e.target.result;
	};
	reader.readAsDataURL(file);
}

function UpLoad() {
var formData = new FormData(); 
formDate.append('workid',workid);
formData.append('file', $('#pic')[0].files[0]);  //添加图片信息的参数
formData.append('file', $('#da')[0].files[0]); //添加其他参数
$.ajax({
    url: 'pictureServlet?action=treecompare',
    type: 'POST',
    cache: false, //上传文件不需要缓存
    data:formData,
    processData: false, // 告诉jQuery不要去处理发送的数据
    contentType: false, // 告诉jQuery不要去设置Content-Type请求头
    success: function (data) {
        var rs = eval("("+data+")");
        if(rs.state==1){
            tipTopShow('上传成功！');
        }else{
            tipTopShow(rs.msg);
        }
    },
    error: function (data) {
        tipTopShow("上传失败");
    }
}) 
}
/*
function UpLoad() {
        //如果有其他的值，判断下是否为空

        var keyValue = $("#gridList").jqGridRowValue().Id;

        form2.action = "/List/AddEvidence?keyValue=" + keyValue;
        form2.submit();
    }*/

</script>
</head>
<body>
<%cutnum c=(cutnum)request.getAttribute("cutnum"); %>
<main>
	
    <div class="home-tab"><i class="tab-i"></i> 所在位置：<span>上传采伐证材料</span></div>
    <div class="find-top">
        <p class="p-tail"><i
         class="i-tail"></i> 该页面主要是管理部门上传采伐证材料</p>
    </div>
    <div class="find-top1">
    <form onSubmit="return inputNull(this)" action="cutnumServlet?action=cutnumUpdate" method="POST">
    <div class="top" id="divprint">
    <table class="table1" border="1">
    <caption class="book_h01">录入采伐证材料</caption>
       <tr>
       <th>采伐证号</th>
       <th>采法许可证编号</th>
       <th>采伐公司</th>
       <th>采伐地点</th>
       <th>采伐四至</th>
       </tr>
       <tr>
       <td><input type="text" name="cutnum" id="cutnum" value="<%=c.getCutnum()%>"></td>
       <td><input type="text" name="number" id="number" value="<%=c.getNumber()%>"></td>
       <td><input type="text" name="company" id="company" value="<%=c.getCompany()%>"></td>
       <td><input type="text" name="cutsite" id="cutsite" value="<%=c.getcutsite()%>"></td>
       <td><input type="text" name="sizhi" id="sizhi" value="<%=c.getSizhi()%>"></td>
       </tr>
       <tr>
       <th>林分起源</th>
       <th>林种</th>
       <th>树种</th>
       <th>权属</th>
       <th>林权证号</th>
       </tr>
       <tr>
       <td><input type="text" name="treeorigin" id="treeorigin" value="<%=c.getTreeorigin() %>"></td>
       <td><input type="text" name="foresttype" id="foresttype" value="<%=c.getforesttype() %>"></td>
       <td><input type="text" name="treetype" id="treetype" value="<%=c.getTreetype() %>"></td>
       <td><input type="text" name="ownership" id="ownership" value="<%=c.getOwnership() %>"></td>
       <td><input type="text" name="forestid" id="forestid" value="<%=c.getForestid()%>"></td>
       </tr>
       <tr>
       <th>采伐类型</th>
       <th>采伐方式</th>
       <th>采伐强度</th>
       <th>采伐面积</th>
       <th>株数</th>
       </tr>
       <tr>
       <td><input type="text" name="cuttype" id="cuttype" value="<%=c.getcuttype() %>"></td>
       <td><input type="text" name="cutmethod" id="cutmethod" value="<%=c.getcutmethod() %>"></td>
       <td><input type="text" name="cutqiang" id="cutqiang" value="<%=c.getcutqiang() %>"></td>
       <td><input type="text" name="cutarea" id="cutarea" value="<%=c.getcutarea() %>"></td>
       <td><input type="text" name="treenum" id="treenum" value="<%=c.gettreenum() %>"></td>
       </tr>
       <tr>
       <th>采伐蓄积</th>
       <th>出材量</th>
       <th>采伐开始时间</th>
       <th>采伐截止时间</th>
       <th>领证人</th>
       </tr>
       <tr>
       <td><input type="text" name="cutstore" id="cutstore" value="<%=c.getcutstore() %>"></td>
       <td><input type="text" name="volume" id="volume" value="<%=c.getvolume()%>"></td>
       <td><input type="date" name="starttime" id="starttime" value="<%=c.getStarttime()%>"></td>
       <td><input type="date" name="endtime" id="endtime" value="<%=c.getEndtime()%>"></td>
       <td><input type="text" name="certifier" id="certifier" value="<%=c.getCertifier() %>"></td>
       </tr>
       <tr>
        <td class="top-table-label">上传照片</td><td><input class="filepath" onchange="changepic(this)" type="file" id="pic" name="pic"></td>
        <td class="top-table-label">上传文件</td><td colspan="2"><input type="file" name="da" id="da"></td>
       </tr>
    </table>
    </div>
    <div class=" but_p" style="float:left;"><button class="but_save" type="submit" id="mybutton" value="更新工单">更新工单</button>
     <button class="but_save" type="button" value="返回" onclick="javascrtpt:window.location.href='manageCutnum.jsp'">返回添加</button></div>
      <div><input style="float:center;" type="button" id="btnPrint" value="打印"/></div>
                <div style="clear: both;padding-bottom: 40px"></div>
    </form>
  <!-- 
  <form  id="myForm" action="pictureServlet" method="post" enctype="multipart/form-data">
    <table class="top-table">
        <tr><td class="top-table-label">输入采伐号：</td><td colspan="5"><input type="text" name="workid" id="workid"></td></tr>
        <tr><td class="top-table-label">上传照片</td><td colspan="5"><input class="filepath" onchange="changepic(this)" type="file" id="pic" name="pic"></td></tr>
        <tr><td class="top-table-label">上传文件</td><td colspan="5"><input type="file" name="da" id="da"></td></tr>
        <tr><td colspan="6" style="text-align: center"> <button class="add-but"  onclick="UpLoad()"><i class="glyphicon glyphicon-edit"></i> 提交</button>
         <td>
              <input type="submit" name="submit" value="Submit"></td>
    </table>
 </form> -->  

    </div>
<!-- 显示最近添加的员工 -->
    <div class="table-con">
        <table id="table1" class="table-style"></table>
    </div>

</main>

<script src="js/jquery.js"></script>
<script src="js/bstable/js/bootstrap.min.js"></script>
<script src="js/bstable/js/bootstrap-table.js"></script>
<script src="js/bstable/js/bootstrap-table-zh-CN.min.js"></script>
<script src="js/excanvas.min.js"></script> 
<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.flot.min.js"></script> 
<script src="js/jquery.flot.resize.min.js"></script> 
<script src="js/jquery.peity.min.js"></script> 
<script src="js/fullcalendar.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.dashboard.js"></script> 
<script src="js/jquery.gritter.min.js"></script> 
<script src="js/matrix.interface.js"></script> 
<script src="js/matrix.chat.js"></script> 
<script src="js/jquery.validate.js"></script> 
<script src="js/matrix.form_validation.js"></script> 
<script src="js/jquery.wizard.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/matrix.popover.js"></script> 
<script src="js/jquery.dataTables.min.js"></script> 
<script src="js/matrix.tables.js"></script> 
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/jQuery.print.js"></script>
<script src="js/jquery.PrintArea.js" type="text/JavaScript"></script>
<script type="text/javascript">
$(function(){
    $("#btnPrint").click(function(){ $("#divprint").printArea(); });
});
</script>
</body>
</html>