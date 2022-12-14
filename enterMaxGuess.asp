<!--
    Project    : A04
    File       : enterMaxGuess.asp
    Programmer : Erik Holmes, Richie Joseph
    Date       : October 20,2022
    Description: This file will contain all the server side code for the user to enter the max guess range
-->
<!DOCTYPE html>
<html>
    <head>
        <title>
            enterMaxGuess
        </title>
        <style>
            body{
                 text-align: center;
                 background-color: lightgray;
             }
            h1{
                color: orange;
            }
            #error{
                color:red;
            }
        </style>
        <meta charset="UTF-8">
       
        <script>

            var randomNumber; 
            
            //Function   : checkMaxGuess()
            //Parameter  : void
            //Return     : boolean
            //Description: This function will check to make sure the user enters a valid input
            function checkMaxGuess(){
                    
              var maxGuess=document.getElementById("maxGuess").value; 
              if(maxGuess===""||maxGuess===null)
              {
                document.getElementById("error").innerHTML="This text box can not be blank"; 
                return false;
              }
              else 
              {
                randomNumber=Math.floor(Math.random()*maxGuess)+1; 

                document.getElementById("maxNumberBeingSent").value=maxGuess 
                document.getElementById("randomNumber").value=randomNumber; 
                
                document.getElementById("maxRangeForm").submit(); 
              }
            }
                    
        </script>
    </head>
    <body>
        <h1 id="gameTitle">Hi-Low</h1>
        <hr>
        <form action="guess.asp" method="post" id="maxRangeForm">
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
            id="maxGuess">

            <input type="button" id="submitMaxGuess" value="Submit" onclick="checkMaxGuess()">
            <input type="hidden" name="fname" value="<%=fname%>"">
            <input type="hidden" name="maxGuessNum" id='maxNumberBeingSent'> 
            <input type="hidden" name="randomNumber" id="randomNumber">
            </div>
        </form>
    </body>
</html>