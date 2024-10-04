<%-- 
    Document   : Profile
    Created on : 11-Jan-2024, 5:06:23 pm
    Author     : HP
--%>


                              <%-- 
    Document   : Profile
    Created on : 11-Jan-2024, 5:06:23 pm
    Author     : HP
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Page</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #e0f7fa;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
            .profile-container {
                background-color: #ffffff;
                padding: 30px;
                border-radius: 12px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                width: 90%;
                max-width: 900px;
                margin: auto;
            }
            h1 {
                text-align: center;
                color: #00796b;
                font-size: 2em;
                margin-bottom: 20px;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
            }
            table, th, td {
                border: 1px solid #b2dfdb;
            }
            th, td {
                padding: 15px;
                text-align: left;
                font-size: 1em;
                color: #37474f;
            }
            th {
                background-color: #00796b;
                color: #ffffff;
            }
            tr:nth-child(even) {
                background-color: #f1f8e9;
            }
            tr:hover {
                background-color: #e0f2f1;
            }
            a {
                display: block;
                text-align: center;
                margin-top: 20px;
                text-decoration: none;
                color: #ffffff;
                background-color: #00796b;
                padding: 12px 20px;
                border-radius: 5px;
                transition: background-color 0.3s ease;
            }
            a:hover {
                background-color: #004d40;
            }
        </style>
    </head>
    <body>
        <% ArrayList<String> al = (ArrayList<String>) session.getAttribute("details"); %>
        <div class="profile-container">
            <h1>Profile Details</h1>
            <table>
                <thead>
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Mother Name</th>
                        <th>Father Name</th>
                        <th>Mobile</th>
                        <th>Address</th>
                        <th>Password</th>
                        <th>Email</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><%= al.get(0) %></td>
                        <td><%= al.get(1) %></td>
                        <td><%= al.get(2) %></td>
                        <td><%= al.get(3) %></td>
                        <td><%= al.get(4) %></td>
                        <td><%= al.get(5) %></td>
                        <td><%= al.get(6) %></td>
                        <td><%= al.get(7) %></td>
                    </tr>
                </tbody>
            </table>
            <a href="Edit.jsp">Edit</a>
        </div>
    </body>
</html>

