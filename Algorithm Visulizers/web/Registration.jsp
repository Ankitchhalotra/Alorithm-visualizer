<%-- 
    Document   : Registration
    Created on : 09-Jan-2024, 4:23:42 pm
    Author     : HP
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <style>
            .card-registration .select-input.form-control[readonly]:not([disabled]) {
font-size: 1rem;
line-height: 2.15;
padding-left: .75em;
padding-right: .75em;
}
.card-registration .select-arrow {
top: 13px;
}
        </style>
         <script>
        function validateForm() {
            var firstName = document.forms["registrationForm"]["Firstname"].value.trim();
            var lastName = document.forms["registrationForm"]["Lastname"].value.trim();
            var motherName = document.forms["registrationForm"]["Mothername"].value.trim();
            var fatherName = document.forms["registrationForm"]["Fathername"].value.trim();
            var address = document.forms["registrationForm"]["Address"].value.trim();
            var mobile = document.forms["registrationForm"]["Mobile"].value.trim();
            var password = document.forms["registrationForm"]["password"].value;
            var confirmPassword = document.forms["registrationForm"]["Cpassword"].value;
            var email = document.forms["registrationForm"]["Email"].value.trim();

            // Regular expressions for validation
            var nameRegex = /^[a-zA-Z]+$/;
            var addressRegex = /^[a-zA-Z0-9\s,.'-]{3,}$/;
            var mobileRegex = /^\d{10}$/;
            var passwordRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*()_+}{":;'?\/.,<>]).{8,30}$/;
            var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

            // Validation for Firstname
            if (!firstName.match(nameRegex)) {
                alert("Please enter a valid first name (alphabets only)");
                return false;
            }

            // Validation for Lastname
            if (!lastName.match(nameRegex)) {
                alert("Please enter a valid last name (alphabets only)");
                return false;
            }

            // Validation for Mother's name
            if (!motherName.match(nameRegex)) {
                alert("Please enter a valid mother's name (alphabets only)");
                return false;
            }

            // Validation for Father's name
            if (!fatherName.match(nameRegex)) {
                alert("Please enter a valid father's name (alphabets only)");
                return false;
            }

            // Validation for Address
            if (!address.match(addressRegex)) {
                alert("Please enter a valid address");
                return false;
            }

            // Validation for Mobile number
            if (!mobile.match(mobileRegex)) {
                alert("Please enter a valid mobile number (10 digits)");
                return false;
            }

            // Validation for Password
            if (!password.match(passwordRegex)) {
                alert("Password must be between 8 and 30 characters long and contain one uppercase letter, one symbol, and a number.");
                return false;
            }

            // Validation for Confirm Password
            if (password !== confirmPassword) {
                alert("Passwords do not match");
                return false;
            }

            // Validation for Email
            if (!email.match(emailRegex)) {
                alert("Please enter a valid email address");
                return false;
            }

            return true;
        }
    </script>
    </head>
    <body>
        <form action="Registration.jsp" onsubmit="return validateForm()"  method="post">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <section class="h-100 bg-dark">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col">
        <div class="card card-registration my-4">
          <div class="row g-0">
            <div class="col-xl-6 d-none d-xl-block">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
            </div>
            <div class="col-xl-6">
              <div class="card-body p-md-5 text-black">
                <h3 class="mb-5 text-uppercase">Student registration form</h3>

                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1m" class="form-control form-control-lg " name="Firstname" required/>
                      <label class="form-label" for="form3Example1m">First name</label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1n" class="form-control form-control-lg" name="Lastname" required/>
                      <label class="form-label" for="form3Example1n">Last name</label>
                    </div>
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1m1" class="form-control form-control-lg" name="Mothername" required/>
                      <label class="form-label" for="form3Example1m1">Mother's name</label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1n1" class="form-control form-control-lg" name="Fathername" required />
                      <label class="form-label" for="form3Example1n1">Father's name</label>
                    </div>
                  </div>
                </div>

                <div class="form-outline mb-4">
                  <input type="text" id="form3Example8" class="form-control form-control-lg" name="Address" required />
                  <label class="form-label" for="form3Example8">Address</label>
                </div>

               

                

                <div class="form-outline mb-4">
                  <input type="number" id="form3Example9" class="form-control form-control-lg" name="Mobile" required />
                  <label class="form-label" for="form3Example9">Mobile</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="password" id="form3Example90" class="form-control form-control-lg" name="password" required/>
                  <label class="form-label" for="form3Example90">Password</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="password" id="form3Example99" class="form-control form-control-lg" name="Cpassword" required/>
                  <label class="form-label" for="form3Example99">Confirm password</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="email" id="form3Example97" class="form-control form-control-lg" name="Email" required/>
                  <label class="form-label" for="form3Example97" >Email ID</label>
                </div>

                <div class="d-flex justify-content-end pt-3">
                  <button type="reset" class="btn btn-light btn-lg">Reset all</button>
                  <input type="submit" value="submit" class="btn btn-warning btn-lg ms-2"></input>
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
      
        </form>
       
    </body>
     <% 
        // Perform server-side validation and database insertion
        if(request.getMethod().equalsIgnoreCase("POST")) {
            String firstName = request.getParameter("Firstname");
            String lastName = request.getParameter("Lastname");
            String motherName = request.getParameter("Mothername");
            String fatherName = request.getParameter("Fathername");
            String mobile = request.getParameter("Mobile");
            String address = request.getParameter("Address");
            String password = request.getParameter("password");
            String confirmPassword = request.getParameter("Cpassword");
            String email = request.getParameter("Email");

            try {
                // Your database connection and insertion logic
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/algoVisulizer", "root", "root");
                String sql = "INSERT INTO UserDetails VALUES(?,?,?,?,?,?,?,?)";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, firstName);
                ps.setString(2, lastName);
                ps.setString(3, motherName);
                ps.setString(4, fatherName);
                ps.setString(5, mobile);
                ps.setString(6, address);
                ps.setString(7, password);
                ps.setString(8, email);
                ps.executeUpdate();
                
                // Optionally, provide feedback to the user about successful registration
                out.println("<script>alert('Registration successful!');</script>");
            } catch (Exception e) {
                // Handle exceptions properly
                out.println("<script>alert('An error occurred during registration. Please try again.');</script>");
                e.printStackTrace(); // For debugging purposes, log the exception
            }
        }
    %>

    
    
</html>
