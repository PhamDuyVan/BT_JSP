<%-- 
    Document   : BT_02
    Created on : Oct 16, 2024, 8:48:45 AM
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
        <div class="container">
            <h1> Diện tích và chu vi hình chữ nhật</h1>
            <form action="BT_02.jsp" method="post">
                <label for="length">Chiều dài:</label>
                <input type="number" id="length" name="length" required>
                <br>
                <label for="width">Chiều rộng:</label>
                <input type="number" id="width" name="width" required>
                <br>
                <button type="submit">Tính toán</button>
                <button type="submit">Tiếp Tục</button>

            </form>
            <%
                String length = request.getParameter("length");
                String width = request.getParameter("width");
                String area = request.getParameter("area");
                String perimeter = request.getParameter("perimeter");

                if (length != null && width != null) {
                    double len = Double.parseDouble(length);
                    double wid = Double.parseDouble(width);
                    double a = len * wid;
                    double p = 2 * (len + wid);
            %>
            <h2>Kết quả:</h2>
            <p>Diện tích: <%= a%></p>
            <p>Chu vi: <%= p%></p>
            <%
                }
            %>
        </div>
    </body>
</html>
