<%-- 
 
   Document   : PatientDetails
 
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
  
       <table border="2" cellpadding="7" align="center">
  
         <div align="center">
       
     <caption><h1>Patient Details</h1></caption>
 
           <tr>
        
           <th>ID</th>
          
           <th>Password</th>
         
           <th>First Name</th>
              
           <th>Last Name</th>
    
           <th>Address</th>
      
           <th>Email</th>
     
           <th>insCo</th>
    
        </tr> 
         
   <%
           
     Patient p1 = (Patient)session.getAttribute("p1");
  
          %>
     
       <tr>
       
         <td><%= p1.getPatId()%></td>
  
         <td><%= p1.getPassword()%></td>
  
         <td><%= p1.getFName()%></td>
    
         <td><%= p1.getLName()%></td>
         
         <td><%= p1.getAddress()%></td>
          
         <td><%= p1.getEmail()%></td>
          
         <td><%= p1.getInsCo()%></td>
        
    </tr>
         
  </div>
      
  </form>

    </body>

</html>