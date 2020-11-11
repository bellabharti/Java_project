<%-- 
  
  Document   : UpdateAppointment
  
  Author     : Bharti Parekh

--%>

<%@page import="Business.Patient"%>

<%@page import="Business.Appointment"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
  
  <head>
      
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
       <title>Update Appointment Page</title>
  
  </head>
   
 <body bgColor="AliceBlue"/>
  
      <img src="healthy-tooth.jpg" height="50" width="50"/>
  
      <center>
      
      <%
      
          Patient p1 = (Patient)session.getAttribute("p1");
  
            if(p1.appt.myList.isEmpty() == false) { 
   
                 out.println("<form action='UpdateAppointmentServlet' method='post'>");
  
                 out.println("Date/Time: <input type ='text' name='aptb' value='"+p1.appt.myList.get(0).getApptDateTime()+"'/><br>");
                 out.println("Patient Id: <input type ='text' name='pidtb' value='"+p1.getPatId()+"' readonly/><br>");
 
                 out.println("Dentist Id: <input type ='text' name='didtb' value='"+p1.appt.myList.get(0).getDentID()+"'/><br>");
 
                 out.println("procCode: <input type ='text' name='pcodetb' value='"+p1.appt.myList.get(0).getProcCode()+"'/><br>");
                 out.println("</br>");
          
                 out.println("<input type ='submit' value='Update'/>");
           
                 out.println("<input type ='reset' value='Clear'/>");
    
                 }
               
                 else {
     
                       out.println("You have no appointment scheduled to update</br>");
  
                       out.println("<a href ='AddAppointment.jsp'> Add Appointment</a></br>");
 
                       }
           
        %>
            
 </form>
      
  </center>

    </body>

</html>