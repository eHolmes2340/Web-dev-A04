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
        <link href="styles/enterMaxGuess.css" rel="stylesheet">
        <script>
            
        </script>
    </head>
    <body>
        <h1 id="gameTitle">Hi-Low</h1>
        <hr>
        <form action="">
            <div id="maxGuessRamge">
                <%
                dim fname
                
                fname=Request.Form("name")
                Response.Write("<p> Welcome <u>"&fname&"</u>. Please enter your max guess range </p>")

                Sub Hello()

                end Sub
            %>
            </div>
        </form>
    </body>
</html>