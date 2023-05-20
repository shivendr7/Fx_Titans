<!doctype html>
<%@ include file="tags/tags.jsp" %>
<html lang="en">
<head>
    <title>FX Exchange(Cross border payment)</title>
    <%@ include file="tags/staticFiles.jsp" %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Home</title>
</head>
<body>

<div class="container-fluid">
    <%@ include file="common/navbar.jsp" %>
    <div class="row">
        <div class="col-sm-8 offset-sm-3">
            <form action="${contextPath}/addBene" method="POST">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <h3>Add Beneficiary</h3>
                        </div>
                    </div>
                    <div class="card-body">
                        <table class="table table-borderless" aria-describedby="">
                            <tbody>
                            <tr class="form-group">
                                <td>
                                    <span>Enter Bene Name</span>
                                    <input type="text" class="form-control" id="bene_name" placeholder="Enter Name"
                                           name="bene_name"></td>
                                <td>
                                    <span>Enter Bene Email</span>
                                    <input type="email" class="form-control" id="bene_mail" placeholder="Enter Email"
                                           name="email"></td>
                            </tr>
                            <tr class="form-group">
                                <td>
                                    <span>Enter Bene Identification Number</span>
                                    <input type="number" class="form-control" id="beneficiary_pan_no"
                                           placeholder="Enter Pan Number" name="beneficiary_pan_no"></td>
                                <td>
                                    <span>Enter Bene Account Number</span>
                                    <input type="number" class="form-control" id="beneficiary_account_number"
                                           placeholder="Enter account number" name="beneficiary_account_number"></td>
                            </tr>

                            <tr class="form-group">
                                <td>
                                    <span>Enter Bene Currency</span>
                                    <input type="text" class="form-control" id="beneficiary_account_currency"
                                           placeholder="Enter Account Currency"
                                           name="beneficiary_account_currency"></td>
                                <td>
                                    <span>Enter Swift Code</span>
                                    <input type="text" class="form-control" id="swift_code"
                                           placeholder="Enter SWIFT Code"
                                           name="swift_code"></td>
                            </tr>
                            <tr class="form-group">
                                <td>
                                    <span>Enter Branch name</span>
                                    <input type="text" class="form-control" id="branch_name"
                                           placeholder="Enter branch Code"
                                           name="branch_name"></td>
                                <td>
                                    <span>Enter Bank name</span>
                                    <input type="text" class="form-control" id="bank_name" placeholder="Enter bank name"
                                           name="bank_name"></td>
                            </tr>
                            <tr class="form-group">
                                <td>
                                    <span>Enter Address</span>
                                    <textarea type="text" class="form-control" id="beneficiary_address"
                                              placeholder="Enter Address"
                                              name="beneficiary_address"></textarea></td>
                                <td>
                                    <span>Enter Area Code</span>
                                    <input type="number" class="form-control" id="beneficiary_pincode"
                                           placeholder="Enter PinCode"
                                           name="beneficiary_pincode"></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer">
                        <div class="float-right">
                            <button type="submit" class="btn btn-outline-primary" role="button">Add BeneAnd Send Money
                            </button>
                        </div>

                    </div>
                </div>
            </form>
        </div>

    </div>

</div>
</body>
</html>