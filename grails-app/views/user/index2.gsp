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
    %{--<div class="Poppins">
        <label>name:</label> <input type="text" name="username">
        <label>password:</label> <input type="text" name="password">
        <label>name:</label> <input type="submit" name="login">
    </div>--}%


    <div id="profileImg"></div>
    username : <input type="text" size="200" id="username"><br/>
    email : <input type="text" size="200" id="email"><br/>
    unique_id : <input type="text" size="200" id="unique_id"><br/>
    picture : <input type="text" size="200" id="picture"><br/>

</g:form>
</body>
</html>

<body>







</body>
