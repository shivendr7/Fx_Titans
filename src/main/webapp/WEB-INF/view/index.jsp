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

    select {
              width: 30%;
              padding: 10px;
              border: 1px solid #ccc;
              margin-bottom: 40px;
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


<div style = "text-align: center; margin-top: 100px; font-size: 20px;"  class="col-sm-12">
Wallet amount: 5000
</div>



<div style = "text-align: center; font-size: 30px;"  class="col-sm-12">
<span style="font-weight: bold;">Add Beneficiary Details</span>
</div>

<form style = "text-align: center; margin-top: 10px;" action="addBene" method="post">
<h4 style = "text-align: center; margin-top: 40px;">Select a Country</h4>

<select name="country" style = "text-align: center; margin-top: 10px; margin-bottom: 10px;" id="countryselect">
  <option value="Nepal">Nepal (Nepal Rupee)</option>
  <option value="Pakistan">Pakistan (Pakistan Rupee)</option>
  <option value="Poland">Poland (Poland Zloty)</option>
  <option value="Singapore">Singapore (Singapore Dollar)</option>
  <option value="South Africa">South Africa (South Africa Rand)</option>
  <option value="Spain">Spain (Euro Member Countries)</option>
  <option value="Sri Lanka">Sri Lanka (Sri Lanka Rupee)</option>
</select>
<div class="message" style="margin-bottom: 30px;">
NPR
</div>
<pre>
  Beneficiary Account No:           <input type="text" name="beneficiary_account_number" placeholder="Beneficiary Account Number">
  Confirm Beneficiary Account No:   <input type="text" name="confirm_beneficiary_account_number" placeholder="Confirm Beneficiary Account Number">
  IFSCode:                          <input type="text" name="ifsc_code" placeholder="IFSC Code">
  Bank Name:                        <input type="text" name="bank_name" placeholder="Bank Name">
  Branch Name:                      <input type="text" name="branch_name" placeholder="Branch Name">

  <input style = "text-align: center; margin-top: 40px" type="submit" value="Proceed to Pay">
</pre>
</form>
<script>
    const input = document.querySelector("#countryselect");
      input.addEventListener("input", (event) => {
        if (event.target.value === "Nepal") {
          document.querySelector(".message").innerHTML = "NPR";
        } else if (event.target.value === "Pakistan") {
        document.querySelector(".message").innerHTML = "PKR";
        } else if (event.target.value === "Poland") {
        document.querySelector(".message").innerHTML = "PLN";
        } else if (event.target.value === "Singapore") {
        document.querySelector(".message").innerHTML = "SGD";
        } else if (event.target.value === "South Africa") {
        document.querySelector(".message").innerHTML = "ZAR";
        } else if (event.target.value === "Spain") {
        document.querySelector(".message").innerHTML = "EUR";
        } else if (event.target.value === "Sri Lanka") {
        document.querySelector(".message").innerHTML = "LKR";
        } else {
          document.querySelector(".message").innerHTML = "-";
        }
      });
    </script>
</body>
</html>