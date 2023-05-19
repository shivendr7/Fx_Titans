<!doctype html>
<%@ include file="tags/tags.jsp" %>
<html lang="en">
<head>
    <title>FX Exchange(Cross border payment)</title>
    <%@ include file="tags/staticFiles.jsp" %>
    <style>
    body {
      font-family: sans-serif;
      margin: 0;
      padding: 0;
    }

    form {
      width: 80%;
      margin: 0 auto;
      padding: 20px;
      background-color: #ffffff;
      border: 1px solid #ccc;
      justify-content: flex-end;
    }

    label {
      display: block;
      margin-bottom: 10px;
    }

    input {
      width: 40%;
      padding: 10px;
      border: 1px solid #ccc;
      margin-bottom: 10px;
      margin-left: 30px;
    }

    button {
      background-color: #000000;
      color: #ffffff;
      font-size: 16px;
      padding: 10px;
      border: none;
      cursor: pointer;
    }
    </style>
</head>
<body>
<div class="container-fluid">
    <%@ include file="common/navbar.jsp" %>
    <div class="col-sm-12">
        ${message }
    </div>
</div>





<div style = "text-align: center; margin-top: 20px; font-weight: bold; font-size: 24px;"  class="col-sm-12">
Add beneficiary details
</div>
<form style = "text-align: center; margin-top: 20px" action="addBene" method="post">
<pre>
  Beneficiary Account No: <input type="text" name="beneficiary_account_number" placeholder="Beneficiary Account Number">
  Confirm Beneficiary Account no: <input type="text" name="confirm_beneficiary_account_number" placeholder="Confirm Beneficiary Account Number">
  IFSCode: <input type="text" name="ifsc_code" placeholder="IFSC Code">
  Bank Name: <input type="text" name="bank_name" placeholder="Bank Name">
  Branch Name: <input type="text" name="branch_name" placeholder="Branch Name">
  <input style = "text-align: center; margin-top: 40px" type="submit" value="Continue">
</pre>
</form>
</body>
</html>