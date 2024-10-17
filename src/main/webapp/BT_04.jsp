<%-- 
    Document   : BT_04
    Created on : Oct 16, 2024, 9:05:44 AM
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
            <h1>Đổi Ngoại tệ</h1>
            <form action="BT_04.jsp" method="post">
                <label for="amount">Cho biết Số tiền:</label>
                <input type="number" id="amount" name="tien" required>
                <br>
                <label for="currency">Chọn loại ngoại tệ:</label>
                <select id="currency" name="currency">
                    <option value="USD">USD</option>
                    <option value="GBP">GBP</option>
                    <option value="EUR">EUR</option>
                    <option value="JPY">JPY</option>
                    <option value="AUD">AUD</option>
                </select>
                <br>
                <button type="submit">Đổi tiên</button>
                <button type="reset">Tiếp tục <button>
                        </form>
                        <%
                            String tien = request.getParameter("tien");
                            String ngoaite = request.getParameter("ngoaite");

                            if (tien != null) {
                                double tienvnd = Double.parseDouble(tien);
                                double sotien = 0;
                                switch (ngoaite) {
                                    case "USD":
                                        sotien = tienvnd * 21.38;
                                        break;
                                     case "GBP":
                                        sotien = tienvnd * 32.62;
                                        break;
                                     case "EUR":
                                        sotien = tienvnd * 23.55;
                                        break;
                                     case "JPY":
                                        sotien = tienvnd * 178.61;
                                        break;
                                    case "AUD":
                                        sotien = tienvnd * 16.72;
                                     break;
                                     default:
                                     break;
                                }
                                out.print("Số tiền đổi được: "+ sotien + " đ");
                            }
                        %>
                        </div>
                        </body>
                        </html>
