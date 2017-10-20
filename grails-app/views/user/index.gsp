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
        <table>
            <tr>

                <td>
                    <label>name:</label>

                </td>
                <td>
                    <input type="text" name="username">
                </td>

            </tr>
            <tr>

                <td>
                    <label>password:</label>
                </td>
                <td>
                    <input type="text" name="password">
                </td>
            </tr>
            <tr>

                <td colspan="2">
                    <input type="submit" name="login">
                </td>
            </tr>

            <tr>

                <td colspan="2">
                    <a href="https://accounts.google.com/o/oauth2/v2/auth?
scope=email%20profile&access_type=offline
&include_granted_scopes=true&state=profile
&redirect_uri=http://kyungjoon.ipdisk.co.kr:3000/user/callback&response_type=code&client_id=574875960059-mkh0uvtsbe200mtfs63b84kujj6tsj1v.apps.googleusercontent.com">
                        <asset:image src="btn_google_signin_dark_focus_web.png"  ></asset:image>
                    </a>
                </td>
            </tr>

        </table>

    </div>
</g:form>

</body>
</html>
