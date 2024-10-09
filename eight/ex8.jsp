<%@page import="java.sql.*"%>
<%@page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Retrieve Data from Database</title>
</head>
<body>
    <h2 align="center"><strong>Retrieve Data from Database</strong></h2>
    <table align="center" border="1">
        <tr bgcolor="#A52A2A">
            <td><b>Roll No</b></td>
            <td><b>Name</b></td>
            <td><b>Department</b></td>
        </tr>

        <%
            try (
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/web8", "root", "root");
                Statement statement = connection.createStatement();
                ResultSet resultSet = statement.executeQuery("SELECT * FROM students");
            ) {
                while (resultSet.next()) {
        %>
        <tr bgcolor="#DEB887">
            <td><%= resultSet.getInt("rollno") %></td>
            <td><%= resultSet.getString("name") %></td>
            <td><%= resultSet.getString("dept") %></td>
        </tr>
        <% 
                }
            } catch (SQLException e) {
                out.println("Error: " + e.getMessage());
            }
        %>
    </table>
</body>
</html>
