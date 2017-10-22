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
                    opener: function (element) {
                        return element.find('img');
                    }
                }

            });

            $('body').on('click','.receipeEditTd', function() {

                location.href= "/receipe/edit/"+ $(this).attr('id') ;
            });

        });

    </script>
    <script>
        angular.module('HelloWorldApp', [])
            .controller('HelloWorldController', function($scope) {
               // $scope.greeting = "Hello World";
            });
    </script>


</head>

<body  >
<div class="nav" role="navigation" ng-app="HelloWorldApp">
    <div ng-controller="HelloWorldController">
        %{--<h1>{{greeting}}</h1>--}%
    </div>
    <ul class="">
        <li><g:link class="list" action="list">List</g:link></li>
        <li><g:link action="create" class="create">글쓰기</g:link>

        </li>

    </ul>
    <br/>
</div>

<div class="nav Poppins">
    <ul>

        <li class="" style="font-family: Hanna">
            <g:form action="search" method="post">
                검색어  <g:textField name="searchTerm"></g:textField>
                <g:submitButton name="검색"></g:submitButton>
            </g:form>

        </li>
    </ul>
</div>


<div class="content scaffold-list" role="main">

    <table border="1" width="1500px" class="table Poppins">

        <g:each in="${arrList}" var="receipeOne">
            <tr>
                <td class="receipeEditTd" width="100px" id="${receipeOne.id}" style="font-family: Hanna; font-size: 18pt;vertical-align: center;text-align: center" >
                            수정
                </td>
                <td>
                    <a class="image-popup-vertical-fit" href="/receipe/imageView?id='${receipeOne.image}'"
                       title="${receipeOne.title}">
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