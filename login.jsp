<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom right, #ff9a9e, #fad0c4); /* Pink gradient background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .login-container {
            background-color: #000000; /* Black background for the container */
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 20px;
            width: 300px;
            text-align: center;
        }
        h1 {
            color: #ff61a6; /* Pink color for the heading */
            font-size: 24px;
            margin-bottom: 20px;
        }
        label {
            display: block;
            font-size: 14px;
            margin-bottom: 5px;
            text-align: left;
            color: #fff; /* White text color for labels */
        }
        input[type="email"],
        input[type="password"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #333; /* Darker border for input fields */
            border-radius: 4px;
            font-size: 14px;
            color: #333; /* Dark text color for input fields */
            background-color: #fff; /* White background for input fields */
        }
        button {
            background-color: #ff61a6; /* Pink button color */
            color: #000; /* Black text color for the button */
            border: none;
            padding: 10px 15px;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            width: 100%;
        }
        button:hover {
            background-color: #ff4c8b; /* Darker pink for hover effect */
        }
        .signup-link {
            margin-top: 15px;
            font-size: 14px;
            color: #fff; /* White text color for the signup link */
        }
        .signup-link a {
            color: #ff61a6; /* Pink color for the link */
            text-decoration: none;
        }
        .signup-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>Login</h1>
        <form action="login" method="POST">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <button type="submit">Login</button>
        </form>
        <div class="signup-link">
            <p>Don't have an account? <a href="signup.jsp">Sign up</a></p>
        </div>
    </div>
</body>
</html>
