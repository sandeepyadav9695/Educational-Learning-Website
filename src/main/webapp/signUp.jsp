<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    
    <!-- favicon icon-->
    <link href="img/favicon.ico" rel="icon">
    <link href="img/apple-touch-icon.png" rel="apple-touch-icon">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    
    <!-- google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:200,300|Nunito:400,700&display=swap"
        rel="stylesheet">

    <!-- Bootstrap CSS File -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="vendor/ionicons/css/ionicons.min.css" rel="stylesheet">
    <link href="vendor/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="vendor/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Main Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <style>
        body {
            background: #1dbf73;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-image: url("picture1.png");
        }
        .signup-card {
           max-width: 350px;
            width: 100%;
            padding: 20px;
            border-radius: 10px;
            background: #fff;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }
        .signup-card h3 {
            font-weight: bold;
            margin-bottom: 20px;
            text-align: center;
        }
      
    </style>
</head>
<body>   
<div class="signup-card">
    <h3>Create Account</h3>

    <form action="signUpservlet" method="post">
        <!-- Username -->
        <div class="mb-3">
            <label for="username" class="form-label">Username : </label>
            <input type="text" class="form-control" id="username" name="username" placeholder="Enter username" required>
        </div>

        <!-- Email -->
        <div class="mb-3">
            <label for="email" class="form-label">Email : </label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Enter email" required>
        </div>

        <!-- Password -->
        <div class="mb-3">
            <label for="password" class="form-label">Password : </label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Enter password" required>
        </div>

        <!-- Submit button -->
        <button type="submit" class="btn btn-success w-100">Sign Up</button>

        <!-- Links -->
        <div class="mt-3 text-center">
            <p>Already have an account? <a href="login.jsp">Login here</a></p>
            <a href="Index.html">Back to Home</a>
        </div>
    </form>

        <%-- Display error message if registration fails --%>
        <% String error = request.getParameter("error");
           if (error != null && error.equals("1")) { %>
            <p style="color: red;">Registration failed. Please try again.</p>
        <% } %>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
