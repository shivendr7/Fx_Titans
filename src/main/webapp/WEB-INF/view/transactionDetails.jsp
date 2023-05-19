<!doctype html>
<%@ include file="tags/tags.jsp" %>
<html>
<head>
    <title>FX Exchange(Cross border payment)</title>
    <%@ include file="tags/staticFiles.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

<div class="progress-bar">
  <div class="progress-bar-content">
    <div class="progress-bar-item">
      <span class="progress-bar-label">Step 2</span>
      <div class="progress-bar-progress" style="width: 0%;"></div>
    </div>
  </div>
</div>

<table>
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

<form action="initiateTransaction" method="post">
Enter Amount
<input type="text" placeholder="Enter amount">
Select currency
<select name="currency">
<option value="USD">USD</option>
<option value="EUR">EUR</option>
<option value="GBP">GBP</option>
<option value="JPY">JPY</option>
</select>
<br>
<input type="submit" value="Continue">
</form>


</div>
</body>
</html>