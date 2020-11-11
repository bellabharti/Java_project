<%-- 
    Document   : DDisplayAppointment
  
  Created on : Apr 30, 2019, 4:40:24 PM
  
  Author     : Bharti Parekh

--%>
<%@page import="Business.AppointmentList"%>
<%@page import="Business.Dentist"%>
<%@page import="Business.Appointment"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Dentist Office || My Appointment</title>
    </head>
 <body>
     
  <table border="2" cellpadding="7" align="center">
  <caption><h1>Appointments</h1></caption>
<tr>
    <th>apptDateTime</th>
     <th>patId</th>
     <th>dentId</th>
     <th>procCode</th>
</tr> 
 <%
              
         Dentist d1 = (Dentist)session.getAttribute("d1");
   
            if(d1.aList.myList.isEmpty()==false){
                  
           out.println("<tr>");
          
          out.println("<td>"+d1.aList.myList.get(0).getApptDateTime()+"</td>");     
     
          out.println("<td>"+d1.aList.myList.get(0).getPatID()+"</td>");
   
          out.println("<td>"+d1.aList.myList.get(0).getDentID()+"</td>");
  
          out.println("<td>"+d1.aList.myList.get(0).getProcCode()+"</td>");
 
          out.println("</tr>");
   
          }
           
          else {
               
          out.println("You have no appointment scheduled</br>");
  
          
 
           }
           
     %>
        
     </table>
   
     </div>  
 
     </body>

</html>