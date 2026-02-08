<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forget Password</title>

<style>
/* Reset */
body, html {
    margin: 0;
    padding: 0;
    height: 100%;
    font-family: Arial, sans-serif;
}

/* SAME BACKGROUND AS LOGIN PAGE */
.bg-container {
    height: 100%;
    background: radial-gradient(circle at center, #3aa7b0, #0f6f78);
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    position: relative;
    overflow: hidden;
}

/* Optional faint arrow decoration */
.bg-container::before {
    content: "";
    position: absolute;
    top: 20%;
    left: 10%;
    width: 80%;
    height: 60%;
    background: url('https://cdn-icons-png.flaticon.com/512/3121/3121808.png') no-repeat center;
    background-size: contain;
    opacity: 0.15;
    pointer-events: none;
}

/* Card */
.login-box {
    text-align: center;
    width: 100%;
    max-width: 320px;
    z-index: 2;
}

h1 {
    color: #111;
    font-size: 36px;
    margin-bottom: 40px;
    font-weight: bold;
}

/* Inputs */
.input-field {
    width: 100%;
    padding: 14px 20px;
    margin-bottom: 20px;
    border: none;
    border-radius: 10px;
    background-color: #f1f3f4;
    box-sizing: border-box;
    font-size: 14px;
}

/* Button */
.submit-btn {
    width: 100%;
    padding: 14px;
    border: none;
    border-radius: 12px;
    background-color: #1f3ac6;
    color: white;
    font-weight: 600;
    cursor: pointer;
    font-size: 15px;
}

.submit-btn:hover {
    background-color: #162ea8;
}
</style>
</head>

<body>

<div class="bg-container">
    <div class="login-box">
        <h1>Forget Password</h1>

        <form action="CompanyForgetPwd" method="post">
            <input type="email" name="Femail" class="input-field" placeholder="Email" required>
            <button type="submit" class="submit-btn">Send to email</button>
        </form>
    </div>
</div>

</body>
</html>
