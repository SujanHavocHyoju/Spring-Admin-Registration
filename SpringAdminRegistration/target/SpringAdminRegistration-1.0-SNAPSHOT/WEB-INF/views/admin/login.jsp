<%-- 
    Document   : index
    Created on : Jan 3, 2017, 3:50:05 PM
    Author     : HYOJU
--%>

<%@include file="../header.jsp" %>
<title>Admin Login Page</title>
</head>
<body>
    <div class="container">
        <br/>
        <div class="pull-right">
            <a href="${SITE_URL}/register" class="btn btn-danger">Register</a>
        </div>
        <h1>Please Login with Admin Credentials</h1>
        
        <form action="${SITE_URL}/admin/login" method="post">
            <div class="form-group">
                <label>Admin Username:</label>
                <input type="text" name="username" required="required" placeholder="Enter Admin Username" class="form-control"/>
            </div>
            <div class="form-group">
                <label>Admin Password:</label>
                <input type="password" name="password" required="required" placeholder="Enter Admin Password" class="form-control"/>
            </div>
            
            <button type="submit" class="btn btn-success">Login</button>
            <button type="reset" class="btn btn-info">Reset</button>
            <a href="${SITE_URL}" class="btn btn-danger">Back</a>

        </form>
    </div>
    <%@include file="../footer.jsp" %>