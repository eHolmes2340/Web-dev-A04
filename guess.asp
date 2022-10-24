<!--
    Project    : A04
    File       : guess.asp
    Programmer : Erik Holmes, Richie Joseph
    Date       : October 21,2022
    Description: This file contains all the in game logic using post back. 
-->
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <style>
            body{
                text-align: center;
                background-color: lightgray;
            }
            h1{
                color: orange;
            }
            #errorMsg{
                color: red;
            }
        </style>
        <script type="text/javascript">
            var guess; 
    
            //Function   : checkGuess()
            //Parameter  : void 
            //Return     :
            //Description: This function will make sure that the user enters a valid number
           function checkGuessEntered()
            {
                guess=document.getElementById('guess').value; 
    
                if(guess==""||guess==null)
                {
                    document.getElementById("errorMsg").innerHTML="This text box can not be blank"; 
                    return false;
                }
                else
                {
                    document.getElementById("welcomeMsg").style.display='block'; 
                    document.getElementById('firstGuess').submit(); 
                    return true; 
                }
            }
        </script>
       
    </head>

    <body>
        <h1>Hi-Low</h1>
        <hr>
      
        <%
            dim fname
            dim maxGuessNum
            dim randomNumber
            dim guess
            dim minRange

            minRange=1

            fname=Request.Form("fname")
            maxGuessNum=Request.Form("maxGuessNum")
            randomNumber=Request.Form("randomNumber")
            guess=Request.Form("guess1")
           
            

         if NOT(maxGuessNum="")then %> <form action="guess.asp"method="post" name="guess" id="firstGuess" onsubmit="return checkGuessEntered()">
            <% Response.Write("<p id='welcomeMsg'>Welcome, <b>"&fname&"</b>. Please make a guess</p>") %>
                <div id="guessDiv">
                    <% Response.Write("<p> Your guessing range is 1-"&maxGuessNum&"</p>")%>
                    <p id="errorMsg"></p>
                    <input name="num"  type="number" min="1" step="1"
                    onkeypress="return event.charCode >= 48 && event.charCode <= 57"
                    title="Numbers only"
                    id="guess"> 
                    <input type="submit" value="Make Guess">
                    <input type="hidden" name="fname" id="fname" value="<%=fname%>">
                    <input type="hidden" name="maxGuessNum" id="maxGuessNum">
                    <input type="hidden" name="guess1" id="guess">
            
                 </div>
            </form>
       
             
            <%elseif (guess=4) then%> <form action="guess.asp" method="post" name="guessGreaterThanMaxRange">
         
                <% Response.Write("<p> your new guess range is </p> ")%>

                    <input name="num"  type="number" min="1" step="1"
                                onkeypress="return event.charCode >= 48 && event.charCode <= 57"
                                title="Numbers only"
                                id="guess"> 
                    
                    <input type="submit" value="Make Guess">
                </form>

        <%end if %>

       
    
  
        
        
        
            
        
        
    
    </body>
</html>