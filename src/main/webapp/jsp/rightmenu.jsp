<%@ page trimDirectiveWhitespaces="true"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="api.jsp"%>

<div class="rightMenu">
    <ul>
        <li><a class="navLink homeMenuBut" href="${import_api_url}">Главная</a></li>
        <li><a class="navLink actMenuBut" href="${compoundset_api_url}">Мероприятия</a></li>
        <li><a class="navLink phMenuBut" href="${upload_api_url}">Фото</a></li>
        <li><a class="navLink movMenuBut" href="${upload_api_url}">Видео</a></li>
        <li><a class="navLink conMenuBut" href="${upload_api_url}">Контакты</a></li>
        <li><a class="navLink joinMenuBut" href="${upload_api_url}">Вступить</a></li>
    </ul>
</div>
