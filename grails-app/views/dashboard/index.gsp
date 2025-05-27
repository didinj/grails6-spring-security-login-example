<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
</head>
<body>
    <h1>Welcome to the Secure Dashboard!</h1>
    <p>You are logged in as <strong>${username}</strong></p>
    <form action="${createLink(controller:'logout')}" method="POST">
        <input type="submit" value="Logout"/>
    </form>
</body>
</html>
