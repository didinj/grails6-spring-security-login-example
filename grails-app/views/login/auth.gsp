<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Login</title>
</head>
<body>
    <h2>Login</h2>

    <g:if test='${flash.message}'>
        <div class="alert alert-danger">${flash.message}</div>
    </g:if>

    <form action='${postUrl}' method='POST'>
        <div>
            <label for="username">Username:</label>
            <input type='text' name='username' id='username' />
        </div>

        <div>
            <label for="password">Password:</label>
            <input type='password' name='password' id='password' />
        </div>

        <div>
            <input type='submit' value='Login'/>
        </div>
    </form>
</body>
</html>
