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

%{--String client_id = '574875960059-mkh0uvtsbe200mtfs63b84kujj6tsj1v.apps.googleusercontent.com'
String secret_key = 'PYItAd4J4p2ieEnMw4c-SJEc'--}%

<script>
    function loadImage(path, width, height, target) {
        $('<img src="'+ path +'">').load(function() {
            $(this).width(width).height(height).appendTo(target);
        });
    }
    var code = '${code}';
    var client_id = '574875960059-mkh0uvtsbe200mtfs63b84kujj6tsj1v.apps.googleusercontent.com';
    var client_secret = 'PYItAd4J4p2ieEnMw4c-SJEc';
    var redirect_uri = 'http://kyungjoon.ipdisk.co.kr:3000/user/callback'
    var grant_type = 'authorization_code'

    function getGooglePlusUserInfo(){

        $.ajax({
            url: "https://www.googleapis.com/oauth2/v4/token",
            type: "POST",
            data: {
                code: code,
                client_id: client_id,
                client_secret: client_secret,
                redirect_uri: redirect_uri,
                grant_type: grant_type


            },
            success: function (data, textStatus, jqXHR) {

//                alert(data.access_token);


                $.ajax({
                    url: "https://www.googleapis.com/plus/v1/people/me?access_token="+ data.access_token,
                    type: "get",
                    success: function (data, textStatus, jqXHR) {

                        console.log(JSON.stringify(data));

                        var displayName = data.displayName;

                        var email = data.emails[0].value;
                        var image = data.image.url;
                        $("#username").val(displayName);
                        $("#email").val(email);
                        $("#unique_id").val(data.id);
                        $("#picture").val(image);


                        loadImage(image, 100, 100, '#profileImg');

                    },
                    error: function (jqXHR, textStatus, errorThrown) {

                    }
                })


            },
            error: function (jqXHR, textStatus, errorThrown) {

            }
        })

    }


    $(function () {
        getGooglePlusUserInfo();
    });

</script>

<!DOCTYPE html>
<html>
<body>

<form action="https://www.googleapis.com/oauth2/v4/token" method="post" enctype="application/x-www-form-urlencoded">

    <div id="profileImg"></div>
    username : <input type="text" size="200" id="username"><br/>
    email : <input type="text" size="200" id="email"><br/>
    unique_id : <input type="text" size="200" id="unique_id"><br/>
    picture : <input type="text" size="200" id="picture"><br/>



    <input type="submit">
</form>


</body>
</html>
</body>
</html>
