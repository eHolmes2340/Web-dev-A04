<!--
    Project    : A04
    File       : guess.asp
    Programmer : Erik Holmes
    Date       : October 21,2022
    Description:
-->
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <style>
            body{
                text-align: center;
            }
            h1{
                color: orange;
            }
        </style>
    </head>

    <body>
        <h1>Hi-Low</h1>
        <hr>
        <% 
            dim fname
            dim maxGuessNum
            dim randomNumber

            fname=Request.Form("fname")
            maxGuessNum=Request.Form("maxGuessNum")
            randomNumber=Request.Form("randomNumber")

           ' For Testing to make sure things are getting sent proper. 
           'Response.Write("<p>"&maxGuessNum&"</p>")
           'Response.Write("<p>"&fname&"</p>")
           'Response.Write("<p>"&randomNumber&"</p>") 
        %>
        <!--TODO: Do the in game logic for the users guess that is going to get entered -->
       <div id="guessDiv">
            <input name="num"  type="number" min="1" step="1"
            onkeypress="return event.charCode >= 48 && event.charCode <= 57"
            title="Numbers only"
            id="guess"> 
            <input type="button" onclick="" value="Make Guess">
       </div>
     
    </body>
</html>