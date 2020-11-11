<%-- 
    Document   : AddAppointment

    Author     : Bharti Parekh

--%>

<%@page import="Business.Patient"%>

<%@page import="Business.Appointment"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
   
 <head>
  
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Add Appointment Page</title>
 
   </head>
 
   <body bgColor="AliceBlue"/>
   
     <img src="healthy-tooth.jpg" height="50" width="50"/>
     
   <center>
       

     <%
               
 Patient p1 = (Patient)session.getAttribute("p1");
     
       %>
          
  <form action="AddAppointmentServlet" method="post">
   
             Date/Time: <input type ="text" name="aptb"/><br>
 
             Patient Id: <input type ="text" name="pidtb" value="<%= p1.getPatId() %>" readonly/> <br>
   
             Dentist Id: <input type ="text" name="didtb"/><br>
       
             procCode: <input type ="text" name="pcodetb" /> <br>
  
              </br>
  
              <input type ="submit" value = "Add"/>
              
              <input type ="reset" value = "Clear"/>
           
 </form>
    
    </center>
  
  </body>

</html>
