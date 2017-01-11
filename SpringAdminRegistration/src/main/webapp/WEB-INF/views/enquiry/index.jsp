<%-- 
    Document   : index
    Created on : Jan 3, 2017, 3:50:05 PM
    Author     : HYOJU
--%>

<%@include file="../header.jsp" %>
<title>Enquiry Page</title>
</head>
<body>
<div class="container">
            <h1>Enquiry Index</h1>
            <form action="${SITE_URL}/enquiry/save" method="post">
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
                    <input type="text" name="email" required="required" placeholder="Enter your email" class="form-control"/>
                </div>
                <div class="form-group">
                    <label>Contact:</label>
                    <input type="text" name="contactNo" required="required" placeholder="Enter your contact no" class="form-control"/>
                </div>
                <div class="form-group">
                    <label>Subject:</label>
                    <input type="text" name="subject" required="required" placeholder="Enter your subject" class="form-control"/>
                </div>
                <div class="form-group">
                    <label>Message:</label>
                    <textarea name="message" required="required" placeholder="Enter Your Message" class="form-control" style="height: 200px"></textarea>
                </div>
                <button type="submit" class="btn btn-success">Send</button>
                <a href="${SITE_URL}" class="btn btn-danger">Back</a>
            </form>
        </div>
    <%@include file="../footer.jsp" %>