<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
    body, html,#allmap {width: 100%;height: 100%;overflow: hidden;margin:0;font-family:"微软雅黑";}
    </style>
    <script type="text/javascript" src="//api.map.baidu.com/api?v=2.0&ak=k12sT43jR7UCUAdZG2XMMNsZmibP1pNW"></script>
    <title>map</title>
</head>
<body>
    <div id="allmap"></div>
</body>
<script type="text/javascript">
    // 百度地图API功能
    var map = new BMap.Map("allmap");    // 创建Map实例
    map.centerAndZoom(new BMap.Point(117.380805,26.931175), 16);  // 初始化地图,设置中心点坐标和地图级别
    map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
  var sy = new BMap.Symbol(BMap_Symbol_SHAPE_BACKWARD_OPEN_ARROW, {
    scale: 0.6,//图标缩放大小
    strokeColor:'#fff',//设置矢量图标的线填充颜色
    strokeWeight: '2',//设置线宽
});
var icons = new BMap.IconSequence(sy, '10', '30');
// 创建polyline对象
var pois = [
	new BMap.Point(117.381746,26.940284), 	
	new BMap.Point(117.38173,26.934861),
	new BMap.Point(117.385034,26.930438),
	new BMap.Point(117.391507,26.931638)
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