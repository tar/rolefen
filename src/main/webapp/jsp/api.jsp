<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--@elvariable id="api_defined" type="java.lang.boolean"--%>
<%--@elvariable id="activeUser" type="com.astrazeneca.d2m.entities.UserEntity"--%>
<c:if test="${empty api_defined}">
    <c:url value="/" var="homepage_url" scope="request"/>
    <c:url value="/about" var="about_url" scope="request"/>
    <c:url value="/contact" var="contact_url" scope="request"/>
    <c:url value="/activity" var="activity_url" scope="request"/>
    <c:url value="/document" var="document_url" scope="request"/>
    <c:url value="/photo" var="photo_url" scope="request"/>
    <c:url value="/movie" var="movie_url" scope="request"/>
    <c:url value="/user" var="user_url" scope="request"/>

    <script type="text/javascript">
        window.homepageApiUrl = '${homepage_url}';
        window.aboutApiUrl = '${about_url}';
        window.contactApiUrl = '${contact_url}';
        window.activityApiUrl = '${activity_url}';
        window.documentApiUrl = '${document_url}';
        window.photoApiUrl = '${photo_url}';
        window.movieApiUrl = '${movie_url}';
        window.userApiUrl = '${user_url}';
    </script>
    <c:set var="api_defined" value="true" scope="request"/>
</c:if>