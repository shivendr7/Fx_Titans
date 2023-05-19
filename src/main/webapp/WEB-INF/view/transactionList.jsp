
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

<div class="modal fade" id="txnModal">
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
</body>
</html>