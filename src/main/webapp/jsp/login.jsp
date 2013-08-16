<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div id="loginDialog" class="editDialogWrap" title="Войти" style="display: none">
    <form id="loginForm" action="<c:url value='/login' />" method='POST' cssClass="editDialog">
        <table id="loginTable">
            <tr>
                <td class="editDialogHeader">Никнейм</td>
                <td>
                    <div class="posWrapper">
                        <input id="loginInp" type='text' name='j_username' value=''/>
                    </div></td>
                <td></td>
            </tr>
            <tr>
                <td class="editDialogHeader">Пароль</td>
                <td>
                    <div class="posWrapper">
                        <input id="passwordInp" name='j_password' />
                    </div></td>
                <td></td>
            </tr>
        </table>
    </form>
</div>