<!--
    Project    : A04
    File       : enterMaxGuess.asp
    Programmer : Erik Holmes
    Date       : October 20,2022
    Description: This file will contain all the server side code for the user to enter the max guess range
-->
<!DOCTYPE html>
<html>
    <head>
        <title>

        </title>
        <link href="styles/" rel="stylesheet">
        <script>
        </script>
    </head>
    <body>
        <%
            dim fname


            fname=Request.Form("nameEntered")
            Response.Write("<p>fname </p>")
        %>

    </body>
</html>