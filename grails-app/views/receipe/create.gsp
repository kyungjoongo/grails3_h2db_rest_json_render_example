%{--<%@ page import="asia.grails.simpledms.Document" %>--}%
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title>Upload New Document</title>
</head>

<body>
<div class="nav" role="navigation">
    <ul><li><g:link class="list" style="font-family: 'Hanna'" action="list">레시피 리스트</g:link></li></ul>
</div>

<div class="content scaffold-create" role="main">
    <h1 style="font-family: 'Hanna'">레시피 입력</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>



<g:form action="upload" method="post" enctype='multipart/form-data'>
        <table class="table Poppins">
            <tr>
                <td>
                    file:
                </td>
                <td>
                    <input type="file" name="file" />
                </td>
            </tr>
            <tr>

                <td>
                    title:
                </td>
                <td>
                    <input type="text" name="title"/>

                </td>
            </tr>

            <tr>

                <td>
                    material:
                </td>
                <td>
                    <input type="text" name="material"/>

                </td>
            </tr>

            <tr>

                <td>

                    url:
                </td>
                <td>
                    <input type="text" name="url"/>
                </td>
            </tr>

        </table>


        <fieldset class="buttons">
            <g:submitButton name="upload" class="save" value="래시피업로드!!"/>
        </fieldset>
</g:form>
</body>
</html>