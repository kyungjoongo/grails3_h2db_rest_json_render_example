<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>

    <asset:link rel="icon" href="coffeecup.png" type="image/x-ico"/>
</head>
<style>
label {
    float: left;
    width: 65px;
}

</style>

<body>




<g:if test="${flash.message}">

    <div class="message">
        ${flash.message}
    </div>

</g:if>

<g:if test="${session.user}">

    <br/>
    ${session.user} 로 로긴 했어요   | <g:link action="logout">logout</g:link>
</g:if>



<g:form action="login" style="padding-left: 200px">
    <div class="Poppins">
        <img src='${picture}'/>${unique_id}<br/>
        <label>username:</label> <input type="text" name="username" value="${username}">
        <label>password:</label> <input type="text" name="password" value="${email}">
        <label>name:</label> <input type="submit" name="login">







    </div>
</g:form>
</body>


</html>





