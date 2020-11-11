
<%-- 
   
   Document   : DLoginError
 
   Created on : Apr 27, 2019, 10:44:53 PM
  
   Author     :Bharti Parekh

--%>

<%@page import="Business.Dentist"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
     

 <title>Error Page</title>
 
  
 <meta charset="UTF-8">
   
  
 
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
  

 </head>

     <body bgColor="AliceBlue"/>
   
     <img src="healthy-tooth.jpg" height="50" width="50"/>
   

  <%
       
  

       Dentist d1 = (Dentist)session.getAttribute("d1");

   
    d1.display();
   

  %>
         
      

       <center> <h1> ERROR Logging!!!!!!!</h1>
    
 
  
      Error Logging in for Dentist with ID:<%= d1.getId()%>. Try again:</br>
 
        <a href="DentistLogin.html">Login Here</a></center>
        
 

    
 </body>




</html>
    
   
    