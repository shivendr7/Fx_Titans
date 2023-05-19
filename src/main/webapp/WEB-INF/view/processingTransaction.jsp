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

    button {
      background-color: #000000;
      color: #ffffff;
      font-size: 16px;
      padding: 10px;
      border: none;
      cursor: pointer;
    }
    </style>
<title>Processing Transaction</title>
</head>
<body>
    <div class="container-fluid">
    <%@ include file="common/navbar.jsp" %>
    <div class="col-sm-12">
        ${message }
    </div>
<div style = "text-align: center; margin-top: 20px; font-weight: bold; font-size: 40px; font-family: sans-serif"  class="col-sm-12">
PROCESSING..
</div>
</div>
</body>
</html>