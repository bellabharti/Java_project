<%-- 

    Document   : UpdateDDetails
 
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
  
  <body bgColor="AliceBlue"/>
 
       <img src="healthy-tooth.jpg" height="50" width="50"/>
 
       <form action="UpdateDDetailsServlet" method="post">
 
           <div align="right">     

                <caption><h1>Dentist Details</h1></caption>

                <%
                
    Dentist d1 = (Dentist)session.getAttribute("d1");
  
              %>
               
 ID: <input type ="text" name="idtb" value="<%= d1.getId()%>" readonly/><br>
 
 Password: <input type ="password" name="pwtb" value="<%= d1.getPassword()%>"/> <br>

                First Name: <input type ="text" name="fntb" value="<%= d1.getFName()%>"/><br>
  
              Last Name: <input type ="text" name="lntb" value="<%= d1.getLName()%>"/> <br>
 
               Email: <input type ="text" name="emailtb" value="<%= d1.getEmail()%>" /> <br>
 
               Office: <input type ="text" name="ofctb" value="<%= d1.getOffice()%>" /> <br>
 
               </br>
             
   <input type ="submit" value = "Update"/>
     
           <input type ="reset" value = "Clear"/>
    
        </div>
    
    </form>
    
</body>

</html>




