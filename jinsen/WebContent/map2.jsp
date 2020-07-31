<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="jinshen.bean.*" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
     body,html,#allmap {width: 60%;height: 60%;overflow: hidden;margin:0;font-family:"微软雅黑";}
    </style>
    <script type="text/javascript" src="//api.map.baidu.com/api?v=2.0&ak=k12sT43jR7UCUAdZG2XMMNsZmibP1pNW"></script>
    <title>map</title>
</head>
<body>
<% inyard c=(inyard)request.getAttribute("inyard"); 
List<tree> t=null;
t=(List<tree>)request.getAttribute("tree");
%>
<% workpage w=(workpage)request.getAttribute("workpage");%>
<% compareTree m=(compareTree)request.getAttribute("compareTree");%>

<div id="allmap"></div>

</body>
<script type="text/javascript">
    // 百度地图API功能
    var map = new BMap.Map('allmap');    // 创建Map实例
    map.centerAndZoom(new BMap.Point(116.404, 39.915), 14);  // 初始化地图,设置中心点坐标和地图级别
    map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
  var sy = new BMap.Symbol(BMap_Symbol_SHAPE_BACKWARD_OPEN_ARROW, {
    scale: 0.6,//图标缩放大小
    strokeColor:'#fff',//设置矢量图标的线填充颜色
    strokeWeight: '2',//设置线宽
});
var icons = new BMap.IconSequence(sy, '10', '30');
// 创建polyline对象
var pois = [
	new BMap.Point(116.350658,39.938285),
	new BMap.Point(116.386446,39.939281),
	new BMap.Point(116.389034,39.913828),
	new BMap.Point(116.442501,39.914603)
];
var polyline =new BMap.Polyline(pois, {
   enableEditing: false,//是否启用线编辑，默认为false
   enableClicking: true,//是否响应点击事件，默认为true
   icons:[icons],
   strokeWeight:'8',//折线的宽度，以像素为单位
   strokeOpacity: 0.8,//折线的透明度，取值范围0 - 1
   strokeColor:"#18a45b" //折线颜色
});

map.addOverlay(polyline);          //增加折线
</script>
</html>