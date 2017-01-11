<%-- 
    Document   : index
    Created on : Jan 11, 2017, 4:08:14 PM
    Author     : HYOJU
--%>

<%@include file="../../header.jsp" %>
<title>User Records</title>
</head>
<body>
    <div class="container">
    <h1>Users</h1>
    <div class="pull-right">
                <p>
                    <a href="${SITE_URL}/admin/user/add" title="Add Users" class="btn btn-primary">
                      <span class="glyphicon glyphicon-plus"></span>
                    </a>
                      <a href="${SITE_URL}/admin/index" title="Back to Admin Page" class="btn btn-danger">
                      <span class="glyphicon glyphicon-arrow-left"></span>
                    </a>
                </p>
            </div>
            <table class ="table">
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Username</th>
                    <th>Password</th>
                    <th>Registered Date</th>
                    <th>is Admin</th>
                    <th>Action</th>
                </tr>
                <c:forEach var="use" items="${users}">
                    <tr>
                        <td>${use.id}</td>
                        <td>${use.firstName} ${use.lastName}</td>
                        <td>${use.email}</td>
                        <td>${use.username}</td> 
                        <td>${use.password}</td>
                        <td>${use.registeredDate}</td>
                        <td>${use.isAdmin}</td>
                        <td>
                            <a href="${SITE_URL}/admin/user/edit/${use.id}" class="btn btn-success" title="Edit User">
                                <span class="glyphicon glyphicon-pencil"></span></a>
                            <a href="${SITE_URL}/admin/user/delete/${use.id}" class="btn btn-danger" title="Delete User" onclick="return confirm('Are you sure to Delete?')">
                                <span class="glyphicon glyphicon-trash"></span></a>    
                        </td>
                    </tr>
                </c:forEach>
            </table>
    </div>
    <%@include file="../../footer.jsp" %>
