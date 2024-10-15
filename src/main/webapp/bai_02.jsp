<%-- 
    Document   : bai_02
    Created on : Oct 15, 2024, 2:25:59 PM
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
        <h1>Tính chu vi - diện tích hình chữ nhật</h1>
        <form action="bai_02.jsp" method="post">
            <table border="0">
                <tr>
                    <td>Nhập chiều dài</td>
                    <td><input type="text" name="dai" value="" /></td>
                </tr>
                <tr>
                    <td>Nhập chiều rộng</td>
                    <td><input type="text" name="rong" value="" /></td>
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
            String dai = request.getParameter("dai");
            String rong = request.getParameter("rong");
            double cv, dt;
            if (dai != null && rong != null) {
                double d = Double.parseDouble(dai);
                double r = Double.parseDouble(rong);
                cv = (d + r) * 2;
                dt = d * r;
        %>
        <hr>
        Diện tích <%=dt%> <br>
        Chu vi <%=cv%> <br>
        <% }%>
    </body>
</html>
