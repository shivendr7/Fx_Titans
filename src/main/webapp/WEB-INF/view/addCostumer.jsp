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





<div style = "text-align: center; margin-top: 100px; font-weight: bold; font-size: 30px;"  class="col-sm-12">
Add Costumer Details
</div>

<form style = "text-align: center; margin-top: 10px;" action="addCostumer" method="post">
<pre>
  Costumer Name:        <input type="text" name="costumer_name" placeholder="Costumer Name">
  Address:              <input type="text" name="costumer_address" placeholder="Address">
  Phone:                <input type="text" name="phone" placeholder="Phone">
  KYC:                  <input type="text" name="kyc" placeholder="KYC">

  <input style = "text-align: center; margin-top: 40px" type="submit" value="Add Costumer">
</pre>
</form>
</body>
</html>