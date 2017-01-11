<%-- 
    Document   : index
    Created on : Jan 3, 2017, 3:47:22 PM
    Author     : HYOJU
--%>

<%@include file="header.jsp" %>
        <title>Index Page</title>
    </head>
    <body>
    <div class="row">
        <div class="col-md-3"></div>
        <div class="container col-md-6">
            <h1>Register or Login to continue.</h1>
            <a href="${SITE_URL}/register" class="btn btn-primary btn-lg btn-block btn-lg">Register</a>
            <a href="${SITE_URL}/login" class="btn btn-success btn-lg btn-block btn-lg">Login</a>
            <a href="${SITE_URL}/enquiry" class="btn btn-info btn-lg btn-block btn-lg">Send us your enquiry</a>
        </div>
        <div class="col-md-3"></div>
    </div>
            <%@include file="footer.jsp" %>
