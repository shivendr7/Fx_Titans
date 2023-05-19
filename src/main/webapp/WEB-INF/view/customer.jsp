<!doctype html>
<%@ include file="tags/tags.jsp" %>
<html>
<head>
    <title>FX Exchange(Cross border payment)</title>
    <%@ include file="tags/staticFiles.jsp" %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Home</title>
</head>
<body>

<div class="container-fluid">
    <%@ include file="common/navbar.jsp" %>
    <section class="vh-60" style="background-color: #9de2ff;">
        <div class="container py-3 h-100">
            <div class="card">
                <div class="card-header">
                    <div class="float-left">
                        <h3>Customer Details</h3>
                    </div>
                    <div class="float-right">
                        <button type="button" class="btn btn-default btn-sm">
                            <span class="bi bi-check"></span> Kyc Verified
                        </button>
                    </div>
                </div>
                <div class="card-body">
                    <table class="table table-borderless" aria-describedby="">
                        <tbody>
                        <tr>
                            <td>Name</td>
                            <td>Ravi</td>
                        </tr>
                        <tr>
                            <td>Wallet Amount</td>
                            <td>500 INR</td>
                        </tr>
                        <tr>
                            <td>Name</td>
                            <td>Ravi</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="card-footer">
                    <div class="float-right">
                        <a href="${contextPath}/transaction" class="btn btn-outline-primary" role="button">Transaction History</a>
                        <a href="#link" class="btn btn-outline-primary" role="button">Send Money</a>
                        <a href="${contextPath}/newBeneForm" class="btn btn-outline-primary" role="button">Add beneficiary</a>
                    </div>

                </div>
            </div>
        </div>
    </section>
</div>
</body>
</html>