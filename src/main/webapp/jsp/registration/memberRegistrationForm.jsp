<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="editDialogWrap">
    <form:form id="memberRegForm" action="${user_url}/member" modelAttribute="member" method="POST"
        cssClass="editDialog">
        <table id="memberRegTable">
            <tr>
                <td class="editDialogHeader">Имя</td>
                <td>
                    <div class="posWrapper">
                        <form:input id="firstNameInp" path="firstName" />
                    </div></td>
                <td></td>
            </tr>
            <tr>
                <td class="editDialogHeader">Фамилия</td>
                <td>
                    <div class="posWrapper">
                        <form:input id="lastNameInp" path="lastName" />
                    </div></td>
                <td></td>
            </tr>
            <tr>
                <td class="editDialogHeader">Отчество</td>
                <td>
                    <div class="posWrapper">
                        <form:input id="patronymicInp" path="patronymic" />
                    </div></td>
                <td></td>
            </tr>
            <tr>
                <td class="editDialogHeader">Имя КТФ(Login)</td>
                <td>
                    <div class="posWrapper">
                        <form:input id="loginInp" path="login" />
                    </div></td>
                <td></td>
            </tr>
            <tr>
                <td class="editDialogHeader">Пароль</td>
                <td>
                    <div class="posWrapper">
                        <form:input type="password" id="passwordInp" path="password" />
                    </div></td>
                <td></td>
            </tr>
            <tr>
                <td class="editDialogHeader">Телефон</td>
                <td>
                    <div class="posWrapper">
                        <form:input id="phoneInp" path="phone" />
                    </div></td>
                <td></td>
            </tr>
            <tr>
                <td class="editDialogHeader">Адрес эл. почты</td>
                <td>
                    <div class="posWrapper">
                        <form:input id="emailInp" path="email" />
                    </div></td>
                <td></td>
            </tr>
            <tr>
                <td class="editDialogHeader">Адрес</td>
                <td>
                    <div class="posWrapper">
                        <form:input id="addressInp" path="address" />
                    </div></td>
                <td></td>
            </tr>
            <tr>
                <td class="editDialogHeader">Дата рождения</td>
                <td>
                    <div class="posWrapper">
                        <form:input id="birthdayInp" path="birthday" />
                    </div></td>
                <td></td>
            </tr>
            <tr>
                <td class="editDialogHeader">Команда</td>
                <td>
                    <div class="posWrapper">
                        <form:select id="teamSelect" path="teamId">
                            <form:options items="${teams}" itemLabel="caption" itemValue="id" />
                        </form:select>
                    </div></td>
                <td></td>
            </tr>
            <tr>
                <td colspan="3" class="noPad">
                    <button type="button" id="btnSave" class="btnGreen" title="Принять">
                        <span class="btnGreenText">Принять</span>
                    </button></td>
            </tr>
        </table>
    </form:form>
</div>