<%@ page import="java.util.ArrayList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        a {
            text-decoration: none;
            color: #007bff;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>User Profile</h1>
        <table>
            <thead>
                <tr>
                    <th>Field</th>
                    <th>Value</th>
                </tr>
            </thead>
            <tbody>
                <c:set var="details" value="${sessionScope.details}" />
                <c:forEach var="detail" items="${details}" varStatus="loop">
                    <tr>
                        <td><c:out value="${loop.index == 0 ? 'Firstname' : loop.index == 1 ? 'Lastname' : loop.index == 2 ? 'Mothername' : loop.index == 3 ? 'Fathername' : loop.index == 4 ? 'Mobile' : loop.index == 5 ? 'Address' : loop.index == 6 ? 'Password' : 'Email'}" /></td>
                        <td><c:out value="${detail}" /></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <p><a href="Edit.jsp">Edit</a></p>
    </div>
</body>
</html>
