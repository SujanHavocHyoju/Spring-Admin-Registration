<%-- 
    Document   : index
    Created on : Jan 3, 2017, 3:50:05 PM
    Author     : HYOJU
--%>

<%@include file="../../header.jsp" %>
<title>Add User</title>
</head>
<body>
    <div class="container">
        <h1>Add User</h1>
        <form action="${SITE_URL}/admin/user/save" method="post">
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
                <input type="text" name="username" required="required" placeholder="Enter Username" class="form-control"/>
            </div>
            <div class="form-group">
                <label>Password:</label>
                <input type="password" name="password" required="required" placeholder="Enter Password" class="form-control"/>
            </div>
            <div class="form-group">
                <label>Admin / User:</label>
                <input type="radio" name="isAdmin" value="true" required="required">Admin
                <input type="radio" name="isAdmin" value="false">User
            </div>
            <button type="submit" class="btn btn-success">Save</button>
            <button type="reset" class="btn btn-info">Reset</button>
            <a href="${SITE_URL}/admin/user" class="btn btn-danger">Back</a>
        </form>
    </div>
    <%@include file="../../footer.jsp" %>