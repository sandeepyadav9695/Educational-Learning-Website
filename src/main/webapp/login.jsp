<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Favicons -->
    <link href="img/favicon.ico" rel="icon">
    <link href="img/apple-touch-icon.png" rel="apple-touch-icon">
    
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

<title>Login Page</title>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background: #1dbf73;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }
    .login-card {
      max-width: 400px;
      width: 100%;
      padding: 30px;
      border-radius: 15px;
      background: #fff;
      box-shadow: 0 8px 25px rgba(0,0,0,0.2);
    }
    .login-card h3 {
      font-weight: bold;
      margin-bottom: 20px;
      text-align: center;
    }
  </style>
</head>
<body>

  <div class="login-card">
    <h3>Login</h3>
    <form action="loginservlet" method="post">
      <!-- Username -->
      <div class="mb-3">
        <label for="username" class="form-label">UserName</label>
        <input type="text" class="form-control" id="username" 
               name="username" placeholder="Enter your username" required>
      </div>

      <!-- Password -->
      <div class="mb-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" id="password" 
               name="password" placeholder="Enter your password" required>
      </div>

      <!-- Remember me -->
      <div class="mb-3 form-check">
        <input type="checkbox" class="form-check-input" id="remember" name="remember">
        <label class="form-check-label" for="remember">Remember me</label>
      </div>

      <!-- Button -->
      <button type="submit" class="btn btn-primary w-100">Login</button>

      <!-- Extra links -->
      <div class="mt-3 text-center">
        <a href="signUp.jsp">Create an account</a>
      </div>
      <div class="mt-3 text-center">
        <a href="Index.html">Back to Home</a>
      </div>
    </form>

    <%-- Display error message if login fails --%>
    <% String error = request.getParameter("error");
       if ("1".equals(error)) { %>
        <p style="color: red; text-align:center;">Invalid username or password. Please try again.</p>
    <% } %>
    
    <%-- Display message if Register Successful --%>
    <% String rs = request.getParameter("registration");
       if ("success".equals(rs)) { %>
        <p style="color: green; text-align:center;">Your Registration is Successful. Please Login.</p>
    <% } %>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
