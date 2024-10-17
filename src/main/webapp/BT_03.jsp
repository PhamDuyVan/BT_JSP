<%-- 
    Document   : BT_03
    Created on : Oct 16, 2024, 8:57:39 AM
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
            <h1> Diện tích và chu vi hình tròn</h1>
            <form action="BT_03.jsp" method="post">
                <label for="radius">Hãy Nhập Bán kính:</label>
                <input type="number" id="radius" name="radius" step="any" required>
                <br>
                <button type="submit">Tính toán</button>
                <button type="submit">Tiếp Tục</button>

            </form>
            <%
                                String radius = request.getParameter("radius");
                String area = request.getParameter("area");
                String circumference = request.getParameter("circumference");

                if (radius != null && !radius.isEmpty()) {
                    double r = Double.parseDouble(radius);
                    double a = Math.PI * r * r;
                    double c = 2 * Math.PI * r;
            %>
            <h2>Kết quả:</h2>
            <p>Diện tích: <%= String.format("%.2f", a)%></p>
            <p>Chu vi: <%= String.format("%.2f", c)%></p>
            <%
                }
            %>
        </div>
    </body>
</html>
