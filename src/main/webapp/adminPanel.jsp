<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/body.css" rel='stylesheet' type='text/css' />

</head>
<body>
<%
    String message= request.getParameter("msg");
%>
<jsp:include page="adminHeader.jsp"></jsp:include>
<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <form action="${pageContext.request.contextPath }/AdminLogin" method="post" style="max-width:350px;margin:auto">
                <center>
                    <div class="container">
                        <h1>Admin Login</h1>
                        <p>This form only for admin to check result.</p>
                        <hr>
                        <input type="text" placeholder="Enter Yourname" name="username" required>

                        <input type="password" placeholder="Enter Password" name="password" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2, 3}$">
                        <hr>
                        <button type="submit" class="btn">Login</button>
                    </div>
                    <div class="container signin">
                        <% if(request.getAttribute("message") != null && request.getAttribute("message").equals("invalid")) { %>
                            <img src="images/alert-16.png" alt="Computer Man" style="width:23px;height:23px;" autofocus> <font color="#ff0000">Invalid Account</font>
                        <% } %>
                        <small><p>Create an account? <a href="adminRegister.jsp">Sign up</a>.</p></small>
                    </div>
                </center>
            </form>
            <div class="login100-more" style="background-image: url('images/vot.jpg');"></div>
        </div>
        <jsp:include page="adminFooter.jsp"></jsp:include>
    </div>
</div>
</body>
</html>
