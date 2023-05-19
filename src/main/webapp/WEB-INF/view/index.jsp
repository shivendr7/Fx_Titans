<!doctype html>
<%@ include file="tags/tags.jsp" %>
<html lang="en">
<head>
    <title>FX Exchange(Cross border payment)</title>
    <%@ include file="tags/staticFiles.jsp" %>
</head>
<body>
<div class="container-fluid">
    <%@ include file="common/navbar.jsp" %>
    <div class="col-sm-12">
        ${message }
    </div>

</div>

<div class="progress-bar">
  <div class="progress-bar-content">
    <div class="progress-bar-item">
      <span class="progress-bar-label">Step 1</span>
      <div class="progress-bar-progress" style="width: 50%;"></div>
    </div>
  </div>
</div>

<div class="col-sm-12">
Add beneficiary details
</div>
<form action="addBene" method="post">
<pre>
  Beneficiary Account No: <input type="text" name="beneficiary_account_number" placeholder="Beneficiary Account Number">
  Confirm Beneficiary Account no: <input type="text" name="confirm_beneficiary_account_number" placeholder="Confirm Beneficiary Account Number">
  IFSCode: <input type="text" name="ifsc_code" placeholder="IFSC Code">
  Bank Name: <input type="text" name="bank_name" placeholder="Bank Name">
  Branch Name: <input type="text" name="branch_name" placeholder="Branch Name">
  <input type="submit" value="Continue">
</pre>
</form>
</body>
</html>