<%-- 
    Document   : index
    Created on : Jan 3, 2017, 3:50:05 PM
    Author     : HYOJU
--%>

<%@include file="../header.jsp" %>
<title>Admin Page</title>
</head>
<body>
    <h1>Welcome Admin</h1>
    <div>
        <a href="${SITE_URL}/admin/enquiry" class="btn btn-primary" title="Enquiry Records">Enquiries</a>
        
        <a href="${SITE_URL}/admin/user" class="btn btn-primary" title="User Records">Users</a>
    </div>
    <%@include file="../footer.jsp" %>
