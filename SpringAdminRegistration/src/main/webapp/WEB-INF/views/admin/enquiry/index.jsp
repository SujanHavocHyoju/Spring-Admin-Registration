<%-- 
    Document   : index
    Created on : Jan 3, 2017, 3:50:05 PM
    Author     : HYOJU
--%>

<%@include file="../../header.jsp" %>
<title>Enquiry Records</title>
</head>
<body>
    <div class="container">
    <h1>Enquiries</h1>
    <div class="pull-right">
                <p>
                    <a href="${SITE_URL}/admin/enquiry/add" title="Add Enquiry" class="btn btn-primary">
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
                    <th>Contact</th>
                    <th>Enquiry Date</th>
                    <th>Subject</th>
                    <th>Message</th>
                    <th>Action</th>
                </tr>
                <c:forEach var="enq" items="${enquiries}">
                    <tr>
                        <td>${enq.id}</td>
                        <td>${enq.firstName} ${enq.lastName}</td>
                        <td>${enq.email}</td>
                        <td>${enq.contactNo}</td>
                        <td>${enq.enquiryDate}</td> 
                        <td>${enq.subject}</td>
                        <td>${enq.message}</td>
                        <td>
                            <a href="${SITE_URL}/admin/enquiry/edit/${enq.id}" class="btn btn-success" title="Edit Enquiry">
                                <span class="glyphicon glyphicon-pencil"></span></a>
                            <a href="${SITE_URL}/admin/enquiry/delete/${enq.id}" class="btn btn-danger" title="Delete Enquiry" onclick="return confirm('Are you sure to Delete?')">
                                <span class="glyphicon glyphicon-trash"></span></a>    
                        </td>
                    </tr>
                </c:forEach>
            </table>
    </div>
    <%@include file="../../footer.jsp" %>
