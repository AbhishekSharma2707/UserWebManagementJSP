<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link rel="stylesheet" href="HomePages.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <header>
        <nav>
            <ul class="nav-left">
           
                <li><a href="http://localhost:8080/JSPwithJDBC/HomePage.jsp" > <i class="fa-solid fa-house"></i>  Gaming</a></li>
            </ul>
            <ul class="nav-right">
                <li><a href="AddInfo.jsp"><i class="fa-solid fa-user"></i>  Register</a></li>
                <li><a href="Login.jsp"><i class="fa-solid fa-user"></i>  Login</a></li>
            </ul>
        </nav>
    </header>
    <div class="container">
        <aside>
            <ul>
                <li><a href="#"><i class="fa-brands fa-google"></i>  Google</a></li>
                <li><a href="#"><i class="fa-solid fa-envelope"></i>  Email</a></li>
                <li><a href="#"><i class="fa-brands fa-linkedin"></i>  LinkedLn</a></li>
                <li><a href="#"><i class="fa-brands fa-github"></i>  Github</a></li>
            </ul>
            <div class="scrollable-content">
              
                <p>Multiplayer Interaction: Online games often feature multiplayer modes, allowing players to compete or collaborate with others from around the world. This can include friends, strangers, or even professional gamers.

Variety of Games: There is a wide range of online games available, from first-person shooters (FPS) and massively multiplayer online role-playing games (MMORPGs) to strategy games, puzzle games, and sports simulations.

Platforms: Online games can be played on various platforms, including PCs, consoles (like PlayStation, Xbox, and Nintendo), and mobile devices. Some games are exclusive to specific platforms, while others are cross-platform.

In-Game Communication: Many online games offer built-in communication tools such as voice chat, text chat, and messaging systems. This enhances the social aspect of gaming, allowing players to strategize, socialize, and build communities.

E-sports: Competitive online gaming, known as e-sports, has become a major industry. Professional gamers compete in tournaments for substantial prizes, and these events are often streamed live to large audiences.</p>
              
            </div>
        </aside>
        <main>
            <h1>Welcome to Our Website</h1>
            <p>This is a Gaming website.</p>
            <img src="img/q.jpg" alt="Sample Image">
            <p>Online gaming refers to the act of playing video games over the internet. This form of gaming has become increasingly popular due to advancements in technology and internet connectivity. Here are some key aspects of online gaming:

Multiplayer Interaction: Online games often feature multiplayer modes, allowing players to compete or collaborate with others from around the world. This can include friends, strangers, or even professional gamers.

Variety of Games: There is a wide range of online games available, from first-person shooters (FPS) and massively multiplayer online role-playing games (MMORPGs) to strategy games, puzzle games, and sports simulations.

Platforms: Online games can be played on various platforms, including PCs, consoles (like PlayStation, Xbox, and Nintendo), and mobile devices. Some games are exclusive to specific platforms, while others are cross-platform.

In-Game Communication: Many online games offer built-in communication tools such as voice chat, text chat, and messaging systems. This enhances the social aspect of gaming, allowing players to strategize, socialize, and build communities.

E-sports: Competitive online gaming, known as e-sports, has become a major industry. Professional gamers compete in tournaments for substantial prizes, and these events are often streamed live to large audiences.

Microtransactions: Many online games include in-game purchases, also known as microtransactions. Players can buy virtual items, such as skins, weapons, or boosts, to enhance their gaming experience.

Updates and Expansions: Online games frequently receive updates and expansions that introduce new content, fix bugs, and improve gameplay. This keeps the gaming experience fresh and engaging over time.

Community and Culture: Online gaming has a vibrant community and culture. Gamers often share their experiences, tips, and fan art on forums, social media, and streaming platforms like Twitch and YouTube.

Accessibility: With the rise of mobile gaming and affordable internet, online gaming has become more accessible to a global audience, allowing people from different backgrounds and regions to participate.

Online gaming continues to evolve, integrating new technologies like virtual reality (VR) and augmented reality (AR), which promise to offer even more immersive and interactive experiences.</p>
            <h2>Contact Us</h2>
            <form>
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required><br>
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required><br>
                <label for="contact">Contact:</label>
                <input type="tel" id="contact" name="contact" required><br>
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" required><br>
                <label for="description">Description:</label>
                <textarea id="description" name="description" rows="4" required></textarea><br>
                <button onclick="showPopup('Information are send!')" type="submit">Submit</button>
                
                <script>
        function showPopup(message) {
            alert(message);
        }
    </script>
            </form>
        </main>
    </div>
    <footer>
        <p>&copy; 2024 Your Company. All rights reserved.</p>
    </footer>
</body>
</html>
    