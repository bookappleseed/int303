<%-- 
    Document   : ChooseBackground
    Created on : Aug 24, 2018, 9:52:00 AM
    Author     : INT303
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <div class="container">
            <jsp:include page="include/Header.jsp?title=Select Your Background::"/>
            <form action="ChooseBackground" method="post">
                <input type="radio" name="bgColor" value="slategray" ${cookie.bgColor.value ==  "slategray" ? "checked" : ""}/>Dark<br> 
                <input type="text" size="3" disabled style="background-color:slategray"/> 
                <br>
                <input type="radio" name="bgColor" value="navy" ${cookie.bgColor.value ==  "navy" ? "checked" : ""}/>Navy Blue<br> 
                <input type="text" size="3" disabled style="background-color:navy"/> 
                <br>
                <input type="radio" name="bgColor" value="silver" ${cookie.bgColor.value ==  "silver" ? "checked" : ""}/>Silver<br> 
                <input type="text" size="3" disabled style="background-color:silver"/> 
                <br>
                <input type="submit"/>
            </form>
         </body>
</html>
