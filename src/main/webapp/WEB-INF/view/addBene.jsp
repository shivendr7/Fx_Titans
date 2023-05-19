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
            <div class="col-sm-7 offset-sm-3">
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
                                <td><label for="bene_mail">Email:</label></td>
                                <td><input type="email" class="form-control" id="bene_mail" placeholder="Enter email"
                                           name="email"></td>
                            </tr>
                            <tr class="form-group">
                                <td><label for="beneficiary_account_number">Account Number:</label></td>
                                <td><input type="number" class="form-control" id="beneficiary_account_number"
                                           placeholder="Enter account number" name="beneficiary_account_number"></td>
                            </tr>
                            <tr class="form-group">
                                <td><label for="confirm_beneficiary_account_number">Confirm account Number:</label></td>
                                <td><input type="number" class="form-control" id="confirm_beneficiary_account_number"
                                           placeholder="Confirm account number"
                                           name="confirm_beneficiary_account_number"></td>
                            </tr>
                            <tr class="form-group">
                                <td><label for="beneficiary_account_currency">Enter Account Currency:</label></td>
                                <td><input type="text" class="form-control" id="beneficiary_account_currency"
                                           placeholder="Enter Account Currency"
                                           name="beneficiary_account_currency"></td>
                            </tr>
                            <tr class="form-group">
                                <td><label for="swift_code">Swift Code:</label></td>
                                <td><input type="text" class="form-control" id="swift_code"
                                           placeholder="Enter SWIFT Code"
                                           name="swift_code"></td>
                            </tr>
                            <tr class="form-group">
                                <td><label for="bank_name">Bank Name:</label></td>
                                <td><input type="text" class="form-control" id="bank_name" placeholder="Enter ban name"
                                           name="bank_name"></td>
                            </tr>
                            <tr class="form-group">
                                <td><label for="branch_name">Branch Name:</label></td>
                                <td><input type="text" class="form-control" id="branch_name"
                                           placeholder="Enter branch Code"
                                           name="branch_name"></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer">
                        <div class="float-right">
                            <button type="submit" class="btn btn-outline-primary" role="button">Add BeneAnd Send Money</button>
                        </div>

                    </div>
                </div>
              </form>
            </div>

    </div>

</div>
</body>
</html>