<%--
  Created by IntelliJ IDEA.
  User: ravikumar
  Date: 19/05/23
  Time: 11:03 pm
  To change this template use File | Settings | File Templates.
--%>
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
      <th>Transfer Type</th>
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
        <h4 class="modal-title">Transaction Details</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <div class="row">
          <table class="table borderless" aria-describedby="txn_meta_Data" id = "txn_meta_data">

          </table>
        </div>
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
              "TransactionId": 874468965422,
              "BeneId": 1,
              "BeneName": "Sanju",
              "SourceCurrency":"INR",
              "DestinationCurrency":"LKR",
              "ExchangeRate":"3.7",
              "ServiceCharge":"50",
              "UTR":"98975885437753",
              "TransferType":"Instant"
            },
            {
              "TransactionId": 88757856,
              "BeneId": 1,
              "BeneName": "Sanju",
              "SourceCurrency":"INR",
              "DestinationCurrency":"LKR",
              "ExchangeRate":"3.7",
              "ServiceCharge":"50",
              "UTR":"98975885437753",
              "TransferType":"delayed"
            },
            {
              "TransactionId": 4388432934,
              "BeneId": 1,
              "BeneName": "Sanju",
              "SourceCurrency":"INR",
              "DestinationCurrency":"LKR",
              "ExchangeRate":"3.7",
              "ServiceCharge":"50",
              "UTR":"98975885437753",
              "TransferType":"delayed"
            },
            {
              "TransactionId": 644774357,
              "BeneId": 1,
              "BeneName": "Sanju",
              "SourceCurrency":"INR",
              "DestinationCurrency":"LKR",
              "ExchangeRate":"3.7",
              "ServiceCharge":"50",
              "UTR":"98975885437753",
              "TransferType":"Instant"
            }];

  const txnTable = $('#table');
  $(function () {
    $.each(transactionList, function(i, txn) {
      const $tr = $('<tr>').append(
              $('<td  style="cursor: pointer;" class = "txn_id_cell" txnId = '+txn.TransactionId+'>').text(txn.TransactionId),
              $('<td>').text(txn.BeneId),
              $('<td>').text(txn.BeneName),
              $('<td>').text(txn.SourceCurrency),
              $('<td>').text(txn.DestinationCurrency),
              $('<td>').text(txn.ExchangeRate),
              $('<td>').text(txn.TransferType)
      ).appendTo('#txnTableBody');

    });
  });


  $(document).on('click','.txn_id_cell',function(){
    //alert();
    let $txnMetaDataTable = $("#txn_meta_data");
    $txnMetaDataTable.empty();
    const currentTxnId = $(this).attr("txnId");
    const txnObj = transactionList.filter(txn => txn.TransactionId == currentTxnId)[0];
    let tbody = "<tbody>";
    $.each(txnObj, function(key, value) {
       tbody += "<tr><td>" + key + "</td> <td>" + value + "</td></tr>";
    });

    tbody +="</tbody>";
    $txnMetaDataTable.append(tbody);
    $("#txnModal").modal('show');
  });

</script>
</body>
</html>
