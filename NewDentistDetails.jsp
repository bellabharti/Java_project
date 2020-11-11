<%-- 
 
   Document   : NewDentistDetails
 
   Author     : Bharti Parekh

--%>

<%@page import="Business.Dentist"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
   
 <head>
     
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Dentist Details Page</title>

    </head>
  
  <body bgColor="AliceBlue">
  
      <img src="healthy-tooth.jpg" height="50" width="50"/>

        <form action="UpdateDDetailsServlet" method="post">
 
        <table border="2" cellpadding="7" align="center">
 
          <div align="center">
     
       <caption><h1>New Dentist Details</h1></caption>

            <tr>
           
     <th>ID</th>
            
    <th>Password</th>
           
     <th>First Name</th>
        
        <th>Last Name</th>
      
          <th>Email</th>
         
       <th>Office</th>
       
     </tr> 
          
  <%
               
 Dentist d1 = (Dentist)session.getAttribute("d1");
  
          %>
         
   <tr>
        
        <td><%= d1.getId()%></td>
     
           <td><%= d1.getPassword() %></td>
   
             <td><%= d1.getFName() %></td>
       
         <td><%= d1.getLName() %></td>
            
    <td><%= d1.getEmail() %></td>
              
  <td><%= d1.getOffice() %></td>
           
 </tr>
          
 </div>
      
  </form>
   
 </body>

</html>