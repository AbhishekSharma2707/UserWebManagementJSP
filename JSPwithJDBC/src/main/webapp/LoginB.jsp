<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

</head>
<body>


<%
String a1 = request.getParameter("a");
String b1 = request.getParameter("b");

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    String url = "jdbc:mysql://localhost:3306/batch1133";
    String user = "root";
    String pass = "root";

    Connection c = DriverManager.getConnection(url, user, pass);

   PreparedStatement stmt1 = c.prepareStatement("SELECT * FROM user WHERE email=?;");
    stmt1.setString(1, a1);

    ResultSet rs = stmt1.executeQuery();

    if (rs.next()) {
        String storedPassword = rs.getString("password");
        if (storedPassword.equals(b1))  {
        	 %>
        	   
}
</style>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beautiful Webpage</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <nav>
        <h2> <%  out.println( rs.getString("name"));%> </h2>
        <ul>
            <li><a href="Update.jsp">Update</a></li>
            <li><a href="DeleteData.jsp">Delete</a></li>
            <li><a href="Dashbord.jsp">Show Info</a></li>
            <li><a href="HomePage.jsp">Log Out!</a></li>
        </ul>
    </nav>
    <div class="container">
        <div class="box">
        <a href="Update.jsp">
            <img src="img/g.jpg" alt="Image 1">
            <button >Update Information</button>
            </a>
        </div>
        <div class="box">
        <a href="DeleteData.jsp">
            <img src="img/p.jpg" alt="Image 2">
            <button >Delete Information</button>
            </a>
        </div>
        
        <div class="box">
        <a href="Dashbord.jsp">
            <img src="img/u.jpg" alt="Image 3">
            <button >Show Information</button>
            </a>
        </div>
    </div>
    <footer>
        <p>&copy; 2024 Your Company. All rights reserved.</p>
    </footer>
    


    
         
          </center>
    

        	   
         
          
          
           
          
            <% 
        } else {
            
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
        <img src="img/download.jfif" alt="User Not Found">
        <h1>Incorrect Pasword!</h1>
        
        <h1>click here  <a href="http://localhost:8080/JSPwithJDBC/Login.jsp" >GO TO Login Page!</a></h1>
    </div>
</body>
</html>
           <% 
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
        
        <h1>click here  <a href="http://localhost:8080/JSPwithJDBC/Login.jsp" >Go To Login!</a></h1>
    </div>
</body>
</html>
       
      <%  
    }

    // Close resources
    rs.close();
    stmt1.close();
    c.close();
} catch (Exception e) {
    out.println("An error occurred: " + e.getMessage());
    e.printStackTrace();
}
%>
<br><br>

    <script>
        function showPopup(message) {
            alert(message);
        }
    </script>

</body>
</html>
