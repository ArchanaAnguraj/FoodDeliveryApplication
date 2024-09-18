<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #ff007f; /* Pink background */
            background-size: cover;
            background-position: center;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
        }

        /* Overlay to reduce the opacity of the background image */
        body::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.4); /* Black overlay with opacity */
            z-index: 1;
        }

        .registration-container {
            position: relative;
            z-index: 2;
            background-color: #000; /* Black background for form */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
            width: 350px;
            text-align: center;
        }

        .input-group {
            margin-bottom: 15px;
            text-align: left;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: white; /* White text color for labels */
        }

        input {
            width: 100%;
            padding: 10px;
            border: 1px solid #333; /* Dark border for input fields */
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 14px;
            color: #333; /* Dark text color for input fields */
            background-color: #fff; /* White background for input fields */
        }

        button {
            padding: 10px 15px;
            background-color: #ff007f; /* Pink button color */
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            background-color: #e6006c; /* Darker pink for hover effect */
        }

    </style>
</head>
<body>
    <div class="registration-container">
        <h1 style="color: #ff007f;">Register</h1> <!-- Pink heading color -->
        <form action="registerServlet" method="POST">
            <div class="input-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" maxlength="30" required>
            </div>
            <div class="input-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" maxlength="255" required>
            </div>
            <div class="input-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" maxlength="255" required>
            </div>
            <div class="input-group">
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" maxlength="255" required>
            </div>
            <div class="input-group">
                <label for="phono">Phone Number:</label>
                <input type="text" id="phono" name="phono" maxlength="15" required>
            </div>
            <button type="submit">Register</button>
        </form>
    </div>
</body>
</html>
