<%@ page trimDirectiveWhitespaces="true"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Вступить</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<script type="text/javascript" src="<c:url value="/js/jquery.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/jquery-ui.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/jquery.ui.datepicker-ru.js"/>"></script>
<link type="text/css" rel="stylesheet" media="all" href="<c:url value="/css/style.css"/>" />
<link type="text/css" rel="stylesheet" media="all" href="<c:url value="/css/jquery-ui.css"/>" />
<!--[if IE]>
	<link type="text/css" rel="stylesheet" media="all" href="<c:url value="/css/ie.css"/>"/>
	<![endif]-->
<!--[if IE 7]>
	<link type="text/css" rel="stylesheet" media="all" href="<c:url value="/css/ie7.css"/>"/>
	<![endif]-->
<%@ include file="/jsp/api.jsp"%>
</head>

<body>
    <div id="wrapper">
        <div id="header">
            <c:import url="/jsp/header.jsp" />
        </div>
        <div id="main">
            <table class="pageFormat" style="height: 100%" width="100%" cellpadding="0" cellspacing="0">
                <tr>
                    <td class="leftArea"><div id="navigation"><jsp:include page="/jsp/leftmenu.jsp" /></div>
                    </td>
                    <td class="mainArea" valign="top">
                        <div id="container">
                            <div id="content">
                            <div class="topElements middleTable">
                                <h2>Регистрация</h2>
                                <div class="rightControls">
                                </div>
                            </div>
                                <div id="tabs" class="graph">
                                    <ul>
                                        <li><a href="#tabs-1">Для Ратника</a>
                                        </li>
                                        <li><a href="#tabs-2">Для родителей</a>
                                        </li>
                                        <li><a href="#tabs-3">Для друзей</a>
                                        </li>
                                    </ul>
                                    <div id="tabs-1">
                                        <c:import url="/jsp/registration/memberRegistrationForm.jsp" />
                                    </div>
                                    <div id="tabs-2">
                                    </div>
                                    <div id="tabs-3">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>
                    <td class="leftArea"><div id="navigation"><jsp:include page="/jsp/rightmenu.jsp" /></div>
                    </td>
                </tr>
            </table>
        </div>
        <div id="footer">
            <c:import url="/jsp/footer.jsp" />
        </div>
    </div>

    <script type="text/javascript">
        $(function() {
            $("#tabs").tabs();
            $( "#birthdayInp" ).datepicker({
                changeMonth: true,
                changeYear: true,
                yearRange: '1950:+0',
                monthRange: '1:+0',
                showOn: "button",
                buttonImage: "img/calendar.gif",
                buttonImageOnly: true
              });
            $( "#datepicker" ).datepicker( "option", "showAnim", "slideDown");
        });
        $('#btnSave').click(function () {
            $('#memberRegForm').submit();
        });  
    </script>

</body>
</html>