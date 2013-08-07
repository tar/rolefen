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
                                        <div class="editDialogWrap">
                                        <form:form id="memberRegForm" action="${user_url}/member" modelAttribute="member" method="POST" cssClass="editDialog">
                                            <table id="memberRegTable">
                                                <tr>
                                                    <td class="editDialogHeader">Имя</td>
                                                    <td>
                                                        <div class="posWrapper">
                                                            <form:input id="firstNameInp" path="firstName"/>
                                                        </div>
                                                    </td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td class="editDialogHeader">Фамилия</td>
                                                    <td>
                                                        <div class="posWrapper">
                                                            <form:input id="lastNameInp" path="lastName"/>
                                                        </div>
                                                    </td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td class="editDialogHeader">Отчество</td>
                                                    <td>
                                                        <div class="posWrapper">
                                                            <form:input id="patronymicInp" path="patronymic"/>
                                                        </div>
                                                    </td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td class="editDialogHeader">Имя КТФ(Login)</td>
                                                    <td>
                                                        <div class="posWrapper">
                                                            <form:input id="loginInp" path="login"/>
                                                        </div>
                                                    </td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td class="editDialogHeader">Пароль</td>
                                                    <td>
                                                        <div class="posWrapper">
                                                            <form:input type="password" id="passwordInp" path="password"/>
                                                        </div>
                                                    </td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td class="editDialogHeader">Телефон</td>
                                                    <td>
                                                        <div class="posWrapper">
                                                            <form:input id="phoneInp" path="phone"/>
                                                        </div>
                                                    </td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td class="editDialogHeader">Адрес эл. почты</td>
                                                    <td>
                                                        <div class="posWrapper">
                                                            <form:input id="emailInp" path="email"/>
                                                        </div>
                                                    </td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td class="editDialogHeader">Адрес</td>
                                                    <td>
                                                        <div class="posWrapper">
                                                            <form:input id="addressInp" path="address"/>
                                                        </div>
                                                    </td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td class="editDialogHeader">Дата рождения</td>
                                                    <td>
                                                        <div class="posWrapper">
                                                            <form:input id="birthdayInp" path="birthday"/>
                                                        </div>
                                                    </td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td class="editDialogHeader">Команда</td>
                                                    <td>
                                                        <div class="posWrapper">
                                                            <form:select id="teamSelect" path="teamId">
                                                                <form:options items="${teams}" itemLabel="caption" itemValue="id"/>
                                                            </form:select>
                                                        </div>
                                                    </td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="3" class="noPad">
                                                    <button type="button" id="btnSave" class="btnGreen" title="Принять">
                                                        <span class="btnGreenText">Принять</span>
                                                    </button>
                                                    </td>
                                                </tr>
                                            </table>
                                            </form:form>
                                            </div>
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
            $( "#birthdayInp" ).datepicker();
        });
        $('#btnSave').click(function () {
            $('#memberRegForm').submit();
        });  
    </script>

</body>
</html>