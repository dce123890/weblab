<%@page import="java.sql.*"%>
<%@page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Result</title>
</head>
<body>
    <h2>Login Result</h2>
    <%
        String username = request.getParameter("name");
        String password = request.getParameter("password");

        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ex9", "root", "root");
        PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM login WHERE username = ? AND password = ?");
        preparedStatement.setString(1, username);
        preparedStatement.setString(2, password);
        ResultSet resultSet = preparedStatement.executeQuery();

        if (resultSet.next()) {
            out.println("<p>Login Successfully</p>");
        } else {
            out.println("<p>Login Failed</p>");
        }

        resultSet.close();
        preparedStatement.close();
        connection.close();
    %>
</body>
</html>
