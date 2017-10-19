%{--<%@ page import="asia.grails.simpledms.Document" %>--}%
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title>Upload New Document</title>
</head>

<body>
<div class="nav" role="navigation">
    <ul><li><g:link class="list" action="list">Document List</g:link></li></ul>
</div>

<div class="content scaffold-create" role="main">
    <h1>Upload New Document</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:uploadForm action="upload">
<style>

/*@import url('https://fonts.googleapis.com/css?family=Indie+Flower|Poppins');



.flower {
    !*    font-family: 'Poppins', sans-serif;*!
    font-family: 'Indie Flower', cursive;
}*/
</style>

        <table class="table Poppins">
            <tr>
                <td>
                    file:
                </td>
                <td>
                    <input type="file" name="file"/>
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
            <g:submitButton name="upload" class="save" value="Upload"/>
        </fieldset>
    </g:uploadForm>
</div>
</body>
</html>