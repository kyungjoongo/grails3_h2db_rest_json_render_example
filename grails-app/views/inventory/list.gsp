<!doctype html>
<html>
<head>

    <title>Welcome to Grails</title>
</head>
<body>


lskflkdflksadflk-->
${allProduct.name}

<table border="1">
    <g:each in="${allProduct}" var="productOne">
        <tr>
            <td>
                ${productOne.name}
            </td>
            <td>
                ${productOne.sku}
            </td>
            <td>
                ${productOne.price}
            </td>

        </tr>


    </g:each>


</table>

</body>
</html>
