<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User Data</title>

</head>
<body>
<form action="HomePage.jsp">
<%
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/Batch1133";
String user="root";
String password="root";
String Name=request.getParameter("Name");
String Password=request.getParameter("Password");
String Email=request.getParameter("Email");
String DOB=request.getParameter("DOB");
String Gender=request.getParameter("Gender");
String Address=request.getParameter("Address");
String Phone=request.getParameter("Phone");

try {
    Connection c=DriverManager.getConnection(url, user, password);
    PreparedStatement stmt1 = c.prepareStatement("SELECT email FROM user WHERE email=?");
    stmt1.setString(1, Email);
    ResultSet rs = stmt1.executeQuery();

    if (rs.next()) {
        // Email exists, proceed with updating
        PreparedStatement stmt = c.prepareStatement("update user set name=?, password=? where email=?");
        stmt.setString(1, Name);
        stmt.setString(2, Password);
        stmt.setString(3, Email);
        int rowsAffected = stmt.executeUpdate();

        if (rowsAffected > 0) {
        	%>
       
           
            <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Not Found</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }
        .container {
            text-align: center;
            padding: 100px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .container img {
            width: 500px;
            height: auto;
            margin-bottom: 20px;
        }
        .container h1 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }
        .container button {
            padding: 10px 20px;
            font-size: 16px;
            color: white;
            background-color: #007BFF;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .container button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <img src="img/update.jpg" alt="User Not Found">
        <h1>Sucessfully Updated!</h1>
        
        <h1>click here  <a href="http://localhost:8080/JSPwithJDBC/Update.jsp" >GO TO Back!</a></h1>
    </div>
</body>
</html>
           
            <% 
        } else {
            out.println("<h1>User update failed!</h1>");
        }
    } else {
    	%>
       
        <html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Not Found</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }
        .container {
            text-align: center;
            padding: 100px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .container img {
            width: 400px;
            height: auto;
            margin-bottom: 20px;
        }
        .container h1 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }
        .container button {
            padding: 10px 20px;
            font-size: 16px;
            color: white;
            background-color: #007BFF;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .container button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <img src="img/access1.jpg" alt="User Not Found">
        <h1>User Not Found</h1>
        
        <h1>click here  <a href="http://localhost:8080/JSPwithJDBC/Update.jsp" >Go To Back!</a></h1>
    </div>
</body>
</html>
        
        <%
    }
} catch (Exception e) {
    out.println("An error occurred: " + e.getMessage());
}
%>
</form>

</body>
</html>
