<%-- 
    Document   : index
    Created on : Jan 3, 2017, 3:50:05 PM
    Author     : HYOJU
--%>

<%@include file="../../header.jsp" %>
<title>Edit Users</title>
</head>
<body>
    <div class="container">
        <h1>Edit Users</h1>
        <form action="" method="post">
            <div class="form-group">
                <label>First Name:</label>
                <input type="text" name="firstName" required="required" placeholder="Enter First Name" class="form-control" value="${user.firstName}">
            </div>
            <div class= "form-group">
                <label>Last Name:</label>
                <input type="text" name="lastName" required="required" placeholder="Enter Last Name" class="form-control" value="${user.lastName}">
            </div>
            <div class= "form-group">
                <label>Email</label>
                <input type="email" name="email" required="required" placeholder="Enter Email" class="form-control" value="${user.email}">
            </div>
            <div class="form-group">
                <label>Username:</label>
                <input type="text" name="username" required="required" placeholder="Enter Username" class="form-control" value="${user.username}"/>
            </div>
            <div class="form-group">
                <label>Password:</label>
                <input type="password" name="password" required="required" placeholder="Enter Password" class="form-control" value="${user.password}"/>
            </div>
            <div class="form-group">
                <label>Admin / User:</label>
                <input type="radio" name="isAdmin" value="true" required="required">Admin
                <input type="radio" name="isAdmin" value="false">User
            </div>
            <input type="hidden" id="id" value="${user.id}"/>
            <button type="submit" class="btn btn-success">Save</button>
            <button type="reset" class="btn btn-info">Reset</button>
            <a href="${SITE_URL}/admin/user" class="btn btn-danger">Back</a>
        </form>
    </div>
    <%@include file="../../footer.jsp" %>