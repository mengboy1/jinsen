<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>index</title>
    <link rel="stylesheet" href="css/all.css">
    <link rel="stylesheet" href="js/jQueryCalendar/calendar.css">
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />

    <!-- Custom CSS -->
    <link href="css/style.css" rel='stylesheet' type='text/css' />

    <!-- font-awesome icons CSS -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons CSS-->

    <!-- side nav css file -->
    <link href='css/SidebarNav.min.css' media='all' rel='stylesheet' type='text/css'/>
    <!-- //side nav css file -->

    <!-- js-->
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/modernizr.custom.js"></script>
    <style>
    </style>
    <link href="css/registe.css" rel="stylesheet" type="text/css">
    <style type="text/css">
        .table_p{line-height: 28px;border-bottom: 1px #d0e6ec solid;position: relative;margin-bottom: 10px;
            margin-top: 35px;}
        .table_p span{border-bottom: 3px #42cdec solid;display: inline-block;position: absolute;bottom: -1px;font-weight: bold;font-size: 20px}
        .but_p button{width: 80px}
    </style>
</head>
<body>
<main class="all">
    <aside class="myaside">
        <header class="aside-head"><img src="img/logo.jpg"> </header>
    </aside>
    <article class="artlce">
        <header class="aside-head">
            <ul class="nav-ul">
                <li class="active-li"><a href="usermanage2.jsp" target="fraName">用户管理</a> </li>
                <li><a href="rolemanage.jsp" target="fraName">角色管理</a> </li>
            </ul>
        </header>
        <section class="section">
            <iframe class="ifraem-style" frameborder="0" src="usermanage2.jsp" name="fraName"></iframe>

        </section>
    </article>
</main>
<script src="js/jquery.js"></script>
<script src="js/jQueryCalendar/js/calendar.js"></script>
<script>
    // $('#ca').calendar({
    //     width: 240,
    //     height: 280,
    //     data: [
    //         {
    //             date: '2015/12/24',
    //             value: 'Christmas Eve'
    //         },
    //         {
    //             date: '2015/12/25',
    //             value: 'Merry Christmas'
    //         },
    //         {
    //             date: '2016/01/01',
    //             value: 'Happy New Year'
    //         }
    //     ],
    //     onSelected: function (view, date, data) {
    //         console.log('view:' + view)
    //         alert('date:' + date)
    //         console.log('data:' + (data || 'None'));
    //     }
    // });
    $(function(){
        $(".nav-ul li").click(function(){
            $(this).addClass("active-li").siblings().removeClass("active-li");
            $(this).find("ul").show();
            $(this).siblings().find('ul').hide();
        })
    })
</script>
</body>
</html>