<%-- 
    Document   : index
    Created on : Jan 3, 2017, 3:50:05 PM
    Author     : HYOJU
--%>

<%@include file="../../header.jsp" %>
<title>Edit Enquiry</title>
</head>
<body>
    <div class="container">
        <h1>Edit Enquiry</h1>
        <form action="" method="post">
            <div class="form-group">
                <label>First Name:</label>
                <input type="text" name="firstName" required="required" placeholder="Enter First Name" class="form-control" value="${enquiry.firstName}">
            </div>
            <div class= "form-group">
                <label>Last Name:</label>
                <input type="text" name="lastName" required="required" placeholder="Enter Last Name" class="form-control" value="${enquiry.lastName}">
            </div>
            <div class= "form-group">
                <label>Email</label>
                <input type="text" name="email" required="required" placeholder="Enter Email" class="form-control" value="${enquiry.email}">
            </div>
            <div class= "form-group">
                <label>Contact No:</label>
                <input type="text" name="contactNo" required="required" placeholder="Enter Contact" class="form-control" value="${enquiry.contactNo}">
            </div>
            <div class= "form-group">
                <label>Subject</label>
                <input type="text" name="subject" required="required" placeholder="Enter Subject" class="form-control" value="${enquiry.subject}">
            </div>
            <div class= "form-group">
                <label>Message:</label>
                <textarea name="Message" required="required"  style="height: 200px" class="form-control"> ${enquiry.message}</textarea>
            </div>
            <input type="hidden" id="id" value="${enquiry.id}"/>
            <button type="submit" class="btn btn-success">Save</button>
            <button type="reset" class="btn btn-info">Reset</button>
            <a href="${SITE_URL}/admin/enquiry" class="btn btn-danger">Back</a>
        </form>
    </div>
    <%@include file="../../footer.jsp" %>