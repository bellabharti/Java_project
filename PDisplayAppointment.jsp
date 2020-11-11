<%-- 
 
   Document   : PDisplayAppointment
 
   Author     : Bharti Parekh

--%>

<%@page import="Business.Patient"%>

<%@page import="Business.Appointment"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
  
  <head>
 
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
       <title>Dentist Office || My Appointment</title>
  
  </head>
 
   <body  bgColor="AliceBlue">
     
   <img src="healthy-tooth.jpg" height="50" width="50"/>
 
       <center>
    
        <table border="2" cellpadding="7" align="center">
 
           <caption><h1>My Appointment</h1></caption>
   
         <tr>
      
          <th>Date/Time</th>
 
          <th>Patient Id</th>
      
          <th>Dentist Id</th>
      
          <th>procCode</th>
      
         </tr>
         
   <%
              
         Patient p1 = (Patient)session.getAttribute("p1");
       
          if(p1.appt.myList.isEmpty() == false) {
   
          out.println("<tr>");
           
          out.println("<td>"+p1.appt.myList.get(0).getApptDateTime()+"</td>");
     
          out.println("<td>"+p1.appt.myList.get(0).getPatID()+"</td>");
   
          out.println("<td>"+p1.appt.myList.get(0).getDentID()+"</td>");
  
          out.println("<td>"+p1.appt.myList.get(0).getProcCode()+"</td>");
 
          out.println("</tr>");
   
          }
           
          else {
               
          out.println("You have no appointment scheduled</br>");
  
          out.println("<a href ='AddAppointment.jsp'> Add Appointment</a></br>");
 
           }
           
     %>
        
     </table>
   
     </div>  
 
     </body>

</html>
