<%-- 
  
  Document   : PLoginError
 
   Created on : Apr 27, 2019, 10:45:20 PM
  
  Author     : Bharti Parekh

--%>




<%@page import="Business.Patient"%>



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
     
    
   
 Patient p1 = (Patient)session.getAttribute("p1");
    
 
   
  p1.display();
   
  
 
   %>
         
   
    

 <center> <h1> ERROR Logging!!!!!!!</h1>
      
 
 
 Error Logging in for User with ID:<%=p1.getPatId()%>. Try again:</br>
 
     
       
   <a href="PatientLogin.html">Login Here</a>
 </center>   
  
   
  
   </body>




</html>
       
