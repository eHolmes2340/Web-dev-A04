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
            enterMaxGuess
        </title>
        <meta charset="UTF-8">
        <link href="styles/enterMaxGuess.css" rel="stylesheet">
        <script>
                function checkMaxGuess(){
                    
                   var maxGuess=document.getElementById("maxGuess").value; 
                    if(maxGuess==" "||maxGuess==null)
                    {
                        document.getElementById("error").innerHTML="This text box can not be blank"; 
                    }
                    else 
                    {
                        document.getElementById("maxRangeForm").submit(); 
                    }
                }
                    
        </script>
    </head>
    <body>
        <h1 id="gameTitle">Hi-Low</h1>
        <hr>
        <form action="" method="post" id="maxRangeForm">
            <div id="maxGuessRamge">
            <%
                dim fname
                
                fname=Request.Form("name")
                Response.Write("<p> Welcome <u>"&fname&"</u>. Please enter your max guess range </p>")
            %>
            <p id="error"></p> 
            <!--  
                Title     : How to avoid Decimal values in input type number
                Programmer: Kumar
                Version   : unknown
                Site      :https://stackoverflow.com/questions/37043867/how-to-avoid-decimal-values-in-input-type-number
            -->
            <input name="num"  type="number" min="1" step="1"
            onkeypress="return event.charCode >= 48 && event.charCode <= 57"
            title="Numbers only"
            id="maxGuessRange">

            <input type="button" id="submitMaxGuess" value="Submit" onclick="checkMaxGuess()">
            <input type="hidden" name="nameBeingSent" name="name" id="nameBeingSentToNextPage">
            <input type="hidden" name="maxGuessNum" name="maxGuessRange"id='maxNumberBeingSent'> 
            </div>
        </form>
    </body>
</html>