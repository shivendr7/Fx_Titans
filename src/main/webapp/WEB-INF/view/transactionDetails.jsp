<!doctype html>
<%@ include file="tags/tags.jsp" %>
<html>
<head>
    <title>FX Exchange(Cross border payment)</title>
    <%@ include file="tags/staticFiles.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
    body {
      font-family: sans-serif;
      font-weight: bold;
      margin: 0;
      padding: 0;
    }

    form {
      width: 800px;
      margin: 0 auto;
      padding: 20px;
      background-color: #ffffff;
      border: 1px solid #ccc;
    }

    label {
      display: block;
      margin-bottom: 10px;
    }

    input {
      width: 60%;
      padding: 10px;
      border: 1px solid #ccc;
      margin-bottom: 10px;
    }

    select {
          width: 10%;
          padding: 10px;
          border: 1px solid #ccc;
          margin-bottom: 10px;
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
<title>Home</title>
 <style>
    table {
      border-collapse: collapse;
      width: 100%;
    }

    th, td {
      border: 1px solid black;
      padding: 8px;
    }

    th {
      background-color: lightgray;
    }
    </style>
</head>
<body>

    <div class="container-fluid">
    <%@ include file="common/navbar.jsp" %>
    <div class="col-sm-12">
        ${message }
    </div>

<div style = "text-align: center; margin-top: 20px; font-weight: bold; font-size: 24px;"  class="col-sm-12">
Exchange Rates
</div>

<table style = "text-align: center; margin-top: 20px;">
    <thead>
        <tr>
            <th>From Currency</th>
            <th>To Currency</th>
            <th>Exchange Rate</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>USD</td>
            <td>EUR</td>
            <td>1.05</td>
        </tr>
        <tr>
            <td>USD</td>
            <td>GBP</td>
            <td>0.80</td>
        </tr>
        <tr>
            <td>USD</td>
            <td>JPY</td>
            <td>110</td>
        </tr>
    </tbody>
</table>

<form action="initiateTransaction" method="post" style = "text-align: center; margin-top: 40px">
<pre>
Enter Amount(&#8377;)
<input type="text" placeholder="Enter amount" style = "margin-right: 20px; margin-bottom: 20px">
Select currency
<select name="currency">
<option value="INR">INR</option>
<option value="TA" disabled>To Be Added</option>
</select>
<br>
<input type="submit" value="Continue" style = "text-align: center; margin-top: 40px">
</pre>
</form>

<div style = "text-align: center; margin-top: 50px; margin-bottom: 30px; font-weight: bold; font-size: 24px;"  class="col-sm-12">
Past Transactions
</div>

<div class="container">
  <table id="txnTable"  class="table table-bordered table-hover" aria-describedby="TransactionTable">
    <thead>
    <tr>
      <th>Transaction ID</th>
      <th>Bene Id</th>
      <th>Bene Name</th>
      <th>Source Currency</th>
      <th>Destination Currency</th>
      <th>Exchange Rate</th>
    </tr>
    </thead>
    <tbody id = "txnTableBody">
    </tbody>
  </table>
</div>
<div class="modal fade" id="txnModal" style="font-weight:normal;">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Transaction Progress</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <!-- Modal body -->
      <div class="modal-body">
        <div class="progress">
          <div class="progress-bar bg-success" style="width:10%">
            In BP Wallte
          </div>
          <div class="progress-bar bg-warning" style="width:30%">
            To Partner Bank
          </div>
          <div class="progress-bar bg-danger" style="width:20%">
            To Receiver Bank
          </div>
        </div>
      </div>
      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<script>
  const transactionList =
          [
            {
              "id": 0,
              "beneId": 1,
              "BeneName": "Sanju",
              "sourceCurrency":"INR",
              "destinationCurrency":"USD",
              "exchangeRate":"68"
            },
            {
              "id": 2,
              "beneId": 1,
              "BeneName": "Sanju",
              "sourceCurrency":"INR",
              "destinationCurrency":"USD",
              "exchangeRate":"68"
            },
            {
              "id": 3,
              "beneId": 1,
              "BeneName": "Sanju",
              "sourceCurrency":"INR",
              "destinationCurrency":"USD",
              "exchangeRate":"68"
            },
            {
              "id": 4,
              "beneId": 1,
              "BeneName": "Sanju",
              "sourceCurrency":"INR",
              "destinationCurrency":"USD",
              "exchangeRate":"68"
            }];
  const txnTable = $('#table');
  $(function () {
    $.each(transactionList, function(i, txn) {
      const $tr = $('<tr>').append(
              $('<td data-toggle="modal"  data-target="#txnModal" >').text(txn.id),
              $('<td>').text(txn.beneId),
              $('<td>').text(txn.BeneName),
              $('<td>').text(txn.sourceCurrency),
              $('<td>').text(txn.destinationCurrency),
              $('<td>').text(txn.exchangeRate)
        ).appendTo('#txnTableBody');
    });
  });
</script>



</div>
</body>
</html>