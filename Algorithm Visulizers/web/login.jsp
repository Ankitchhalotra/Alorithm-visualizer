<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" 
              rel="stylesheet" 
              integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <style>
            /* Add your custom styles here */
        </style>
    </head>
    <body>
        <form action="Home.jsp" method="post">
            <section class="vh-100" style="background-color: #9A616D;">
                <div class="container py-5 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col col-xl-10">
                            <div class="card" style="border-radius: 1rem;">
                                <div class="row g-0">
                                    <div class="col-md-6 col-lg-5">
                                        <img src="https://repository-images.githubusercontent.com/280761930/9b6ced80-dedc-11ea-8248-71ff8952791c" alt="login form" class="img-fluid mx-auto" />
                                    </div>
                                    <div class="col-md-6 col-lg-7 d-flex justify-content-center align-items-center">
                                        <div class="card-body p-4 p-lg-5 text-black">
                                            <div class="d-flex align-items-center mb-3 pb-1">
                                                <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                                                <span class="h1 fw-bold mb-0">Login</span>
                                            </div>

                                            <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>

                                            <div class="form-outline mb-4">
                                                <input type="email" id="form2Example17" class="form-control form-control-lg" name="email" />
                                                <label class="form-label" for="form2Example17">Email address</label>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input type="password" id="form2Example27" class="form-control form-control-lg" name="password" />
                                                <label class="form-label" for="form2Example27">Password</label>
                                            </div>

                                            <div class="pt-1 mb-4">
                                                <button class="btn btn-dark btn-lg btn-block" type="submit">Login</button>
                                            </div>

                                            <a class="small text-muted" href="#!">Forgot password?</a>
                                            <p class="mb-5 pb-lg-2" style="color: #393f81;">Don't have an account? <a href="Registration.jsp" style="color: #393f81;">Register here</a></p>
                                            <a href="#!" class="small text-muted">Terms of use.</a>
                                            <a href="#!" class="small text-muted">Privacy policy</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </form>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>
<%
    String Email = request.getParameter("email");
    String password = request.getParameter("password");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/algoVisulizer", "root", "root");

        String sql = "SELECT * FROM UserDetails WHERE Email=? AND Password=?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, Email);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();
        ArrayList al = new ArrayList();
        while (rs.next()) {
            String Firstname = rs.getString(1);
            String Lastname = rs.getString(2);
            String Mothername = rs.getString(3);
            String Fathername = rs.getString(4);
            String Mobile = rs.getString(5);
            String Address = rs.getString(6);
            String Password = rs.getString(7);
            String email = rs.getString(8);

            al.add(Firstname);
            al.add(Lastname);
            al.add(Mothername);
            al.add(Fathername);
            al.add(Mobile);
            al.add(Address);
            al.add(Password);
            al.add(email);

            session.setAttribute("details", al);

            response.sendRedirect("Home.jsp");
            //response.sendRedirect("Profile.jsp");
            //response.sendRedirect("ChangePassword.jsp");
        }
    } catch (Exception e) {
        // Handle exception
    }
%>