<%-- 
    Document   : bai_04
    Created on : Oct 15, 2024, 3:44:24 PM
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
        <h1>Đổi ngoại tệ</h1>
        <form action="bai_04.jsp" method="post">
            <table border="0">               
                <tr>
                    <td>Cho biết số tiền </td>
                    <td><input type="text" name="sotien" value="" /></td>
                </tr>
                <tr>
                    <td>Chọn loại ngoại tệ</td>
                    <td><select name="loaingoaite">
                            <option value="1">USD</option>
                            <option value="2">GBP</option>
                            <option value="3">EUR</option>
                            <option value="4">JPY</option>
                            <option value="5">AUD</option>
                        </select></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Đổi tiền" />
                        <input type="reset" value="Tiếp tục" />
                    </td>
                </tr>
            </table>
        </form>
        <%
            double tienngoaite = Double.parseDouble(request.getParameter("sotien"));
            int loai = Integer.parseInt(request.getParameter("loaingoaile"));
            double tienvnd = 0;
            if(tienngoaite!=0 && loai!=0){
            String tenngoaite = "";
            switch (loai) {
                case 1:
                    tienvnd = tienngoaite * 21380;
                    tenngoaite = "USD";
                    break;
                case 2:
                    tienvnd = tienngoaite * 32622.80;
                    tenngoaite = "GBP";
                    break;
                case 3:
                    tienvnd = tienngoaite * 23555.67;
                    tenngoaite = "EUR";
                    break;
                case 4:
                    tienvnd = tienngoaite * 178.61;
                    tenngoaite = "JPY";
                    break;
                case 5:
                    tienvnd = tienngoaite * 16727.44;
                    tenngoaite = "AUD";
                    break;
                default:
                    throw new AssertionError();
            }

        %>
        <hr>
        Số tiền đổi được:<%=tienvnd %>
        <& } &>
    </body>
</html>
