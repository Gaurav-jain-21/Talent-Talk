<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Users</title>
<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<style>
* {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Segoe UI", sans-serif;
    }

    body {
        background: #f6f7fb;
        display: flex;
        min-height: 100vh;
    }

    /* Sidebar */
    .sidebar {
        width: 240px;
        background: #ffffff;
        padding: 20px;
        border-right: 1px solid #e6e6e6;
    }

    .sidebar h2 {
        margin-bottom: 30px;
        font-size: 18px;
    }

    .menu a {
        display: flex;
        align-items: center;
        padding: 10px 12px;
        margin-bottom: 8px;
        text-decoration: none;
        color: #333;
        border-radius: 8px;
        font-size: 14px;
    }

    .menu a i {
        width: 20px;
        margin-right: 10px;
        color: #6c63ff;
    }

    .menu a.active,
    .menu a:hover {
        background: #f0f1f7;
    }

    /* Main Content */
    .main {
        flex: 1;
        padding: 30px;
    }

    .header {
        font-size: 24px;
        font-weight: 600;
        margin-bottom: 25px;
    }
</style>      
</head>
<body>
<!-- Sidebar -->
<div class="sidebar">
    <h2>Admin Panel</h2>
    <div class="menu">
        <a href="adminDashboard.jsp">
            <i class="fa-solid fa-chart-line"></i> Dashboard
        </a>

        <a href="adminUsers.jsp" class="active">
            <i class="fa-solid fa-users"></i> Users
        </a>

        <a href="#">
            <i class="fa-solid fa-briefcase"></i> Jobs
        </a>

        <a href="#">
            <i class="fa-solid fa-building"></i> Company Verification
        </a>

        <a href="#">
            <i class="fa-solid fa-file-invoice"></i> Invoice
        </a>

        <a href="#">
            <i class="fa-solid fa-chart-pie"></i> Insights
        </a>

        <a href="#">
            <i class="fa-solid fa-credit-card"></i> Payments
        </a>

        <a href="#">
            <i class="fa-solid fa-gear"></i> Settings
        </a>
    </div>
</div>



</body>
</html>