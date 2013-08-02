<%@ page trimDirectiveWhitespaces="true"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Вступить</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" href="<c:url value="/css/style.css"/>" type="text/css" media="screen, projection" />
<link type="text/css" rel="stylesheet" media="all" href="<c:url value="/css/style.css"/>" />
<!--[if IE]>
	<link type="text/css" rel="stylesheet" media="all" href="<c:url value="/css/ie.css"/>"/>
	<![endif]-->
<!--[if IE 7]>
	<link type="text/css" rel="stylesheet" media="all" href="<c:url value="/css/ie7.css"/>"/>
	<![endif]-->
</head>

<body>
    <div id="wrapper">
        <div id="header">
            <c:import url="/jsp/header.jsp" />
        </div>
       <div id="main">
            <table class="pageFormat" style="height:100%" width="100%" cellpadding="0" cellspacing="0">
                <tr>
                    <td class="leftArea"><div id="navigation"><jsp:include page="/jsp/leftmenu.jsp" /></div></td>
                    <td class="mainArea">
                        <div id="container">
                            <div id="content">
                                <strong>Вступить</strong>
                            </div>
                        </div>
                    </td>
                    <td class="leftArea"><div id="navigation"><jsp:include page="/jsp/rightmenu.jsp" /></div></td>
                </tr>
            </table>
        </div>
        <div id="footer">
            <c:import url="/jsp/footer.jsp" />
        </div>
    </div>


</body>
</html>