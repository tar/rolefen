<%@ page trimDirectiveWhitespaces="true"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="api.jsp"%>

<div class="rightMenu">
    <ul>
        <li><a class="navLink homeMenuBut" href="${homepage_url}">Главная</a></li>
        <li><a class="navLink actMenuBut" href="${activity_url}">Мероприятия</a></li>
        <li><a class="navLink aboutMenuBut" href="${about_url}">О нас</a></li>
        <li><a class="navLink docMenuBut" href="${document_url}">Документы</a></li>
        <li><a class="navLink phMenuBut" href="${photo_url}">Фото</a></li>
        <li><a class="navLink movMenuBut" href="${movie_url}">Видео</a></li>
        <li><a class="navLink conMenuBut" href="${contact_url}">Контакты</a></li>
        <li><a class="navLink joinMenuBut" href="${user_url}">Вступить</a></li>
    </ul>
</div>
