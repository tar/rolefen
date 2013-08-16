<%@ page trimDirectiveWhitespaces="true"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/jsp/api.jsp" %>
<a class="mainLogo" href="${homepage_url}"></a>
<h1>КТФ</h1>
<button onclick="openLoginDlg()">Войти</button> 

<c:import url="/jsp/login.jsp" />

