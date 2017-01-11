<%-- 
    Document   : index
    Created on : Jan 3, 2017, 3:50:05 PM
    Author     : HYOJU
--%>

<%@include file="../header.jsp" %>
<title>Registration Page</title>
</head>
<body>
    <div class="container">
        <br/>
        <div class="pull-right">
            <a href="${SITE_URL}/login" class="btn btn-success">Login</a>
        </div>
        <h1>Register your account</h1>
        
        <form action="${SITE_URL}/register/save" method="post">
            <div class="form-group">
                <label>First Name:</label>
                <input type="text" name="firstName" required="required" placeholder="Enter First Name" class="form-control"/>
            </div>
            <div class="form-group">
                <label>Last Name:</label>
                <input type="text" name="lastName" required="required" placeholder="Enter Last Name" class="form-control"/>
            </div>
            <div class="form-group">
                <label>Email:</label>
                <input type="email" name="email" required="required" placeholder="Enter your email" class="form-control"/>
            </div>
            <div class="form-group">
                <label>Username:</label>
                <input type="text" name="username" required="required" placeholder="Enter preferred username" class="form-control"/>
            </div>
            <div class="form-group">
                <label>Password:</label>
                <input type="password" name="password" required="required" placeholder="Enter your password" class="form-control"/>
            </div>
            <button type="submit" class="btn btn-success">Register</button>
            <button type="reset" class="btn btn-info">Reset</button>
            <a href="${SITE_URL}" class="btn btn-danger">Back</a>

        </form>
    </div>
    <%@include file="../footer.jsp" %>