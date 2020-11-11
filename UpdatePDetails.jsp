<%-- 
 
   Document   : UpdatePDetails
 
   Author     : Bharti Parekh

--%>

<%@page import="Business.Patient"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
  
  <head>
  
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
      <title>Patient Details Page</title>
 
 </head>
   
 <body bgColor="AliceBlue"/>
   
     <img src="healthy-tooth.jpg" height="50" width="50"/>
   
     <form action="UpdatePDetailsServlet" method="post">
 
     <div align="right">
  
     <caption><h1>Patient Details</h1></caption>
  
      <%
         
           Patient p1 = (Patient)session.getAttribute("p1");
   
       %>
           
       ID: <input type ="text" name="pidtb" value="<%= p1.getPatId()%>" readonly/><br>
  
              Password: <input type ="password" name="pwtb" value="<%= p1.getPassword()%>" /><br>
 
              First Name: <input type ="text" name="fntb" value="<%= p1.getFName()%>"/><br>
  
              Last Name: <input type ="text" name="lntb" value="<%= p1.getLName()%>"/><br>
 
              Address: <input type ="text" name="adrtb" value="<%= p1.getAddress()%>"/><br>
 
              Email: <input type ="text" name="emailtb" value="<%= p1.getEmail()%>"/><br>
 
              insCo: <input type ="text" name="incotb" value="<%= p1.getInsCo()%>"/><br>

               </br>
      
               <input type ="submit" value = "Update"/>
               <input type ="reset" value = "Clear"/>
   
             </div>
     
   </form>
  
  </body>

</html>