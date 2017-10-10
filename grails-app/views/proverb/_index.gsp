<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>

<body>

aslfksdlkaflasdkflk반가반가와오ㅕaslkdslakd


%{--${arrList.content}--}%
<table border="1" width="1500px">
    <g:each in="${arrList}" var="productOne">
        <tr>
            <td>
               <a href="./show/${productOne.id}">  ${productOne.id}--> ${productOne.content}</a>
            </td>

        </tr>

    </g:each>
</table>
<input type="button" onclick="location.href='./create'" value="글쓰기"/>
</body>
</html>
