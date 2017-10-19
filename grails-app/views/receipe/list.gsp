%{--<%@ page import="asia.grails.simpledms.Document" %>--}%
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title>Upload New Document</title>

    <script>
        $(document).ready(function () {

            //alert('sdlkflsdkflsdkflskdf');
            $('.image-popup-vertical-fit').magnificPopup({
                type: 'image',
                closeOnContentClick: true,
                mainClass: 'mfp-img-mobile',
                image: {
                    verticalFit: true
                },
                zoom: {
                    enabled: true,
                    duration: 300, // don't foget to change the duration also in CSS
                    opener: function(element) {
                        return element.find('img');
                    }
                }

            });

        });

    </script>
</head>

<body >
<div class="nav" role="navigation">
    <ul><li><g:link class="list" action="list">Document List</g:link></li></ul>
</div>

<div class="content scaffold-list" role="main">
    <a href="/receipe/create">글쓰기</a>
    <table border="1" width="1500px" class="table Poppins">
        <g:each in="${arrList}" var="receipeOne">
            <tr>
                <td>



                    <a class="image-popup-vertical-fit" href="/receipe/imageView?id='${receipeOne.image}'" title="${receipeOne.title}">
                        <img width="100px" height="100px" src="/receipe/imageView?id='${receipeOne.image}'">
                    </a>
                </td>
                <td>
                    ${receipeOne.id}   <a href="${receipeOne.url}">${receipeOne.title}  /// ${receipeOne.material}</a>
                </td>

            </tr>

        </g:each>
    </table>

</div>
</body>
</html>