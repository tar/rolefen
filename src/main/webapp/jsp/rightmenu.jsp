<%@ page trimDirectiveWhitespaces="true"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="api.jsp"%>

<div class="rightMenu">
    <ul id="rightMenuList">
        <li><a class="navLink homeMenuBut" href="${homepage_url}">Совет КТФ</a></li>
    </ul>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        var teams = null;
        $.ajax({url:teamApiUrl,
            type:'GET',
            async:false,
            dataType:'json',
            data:{from:0, format:'list'},
            success:function (resp) {
                teams=resp.items;
            },
            error:function () {
            }
        });
        for (var i = 0; i < teams.length; i++) {
            $('#rightMenuList').append('<li><a href="/team/'+teams[i].id+'">'+ teams[i].caption+'</a></li>');            
        }
    });
</script>
