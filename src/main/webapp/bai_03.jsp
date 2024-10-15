<%-- 
    Document   : bai_03
    Created on : Oct 15, 2024, 2:40:25 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tính diện tích - Chu vi hình tròn</h1>
        <form action="bai_03.jsp" method="post">
            <table border="0">
                <tr>
                    <th>Hãy nhập bán kính</th>
                    <th><input type="text" name="bankinh" value="" /></th>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" value="Tính toán" />
                        <input type="reset" value="Tiếp tục" />
                    </td>
                </tr>
            </table>
        </form>
        <%
            String bankinh = request.getParameter("bankinh");
            
            double cv, dt;
            if (bankinh != null) {
                double bk = Double.parseDouble(bankinh);
                
                cv =Math.PI*bk*2;
                dt =Math.PI*bk*bk;
        %>
        <hr>
        Diện tích <%=dt%> <br>
        Chu vi <%=cv%> <br>
        <% }%>
    </body>
</html>
