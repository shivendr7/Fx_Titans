<%--
  Created by IntelliJ IDEA.
  User: ravikumar
  Date: 20/05/23
  Time: 12:16 am
  To change this template use File | Settings | File Templates.
--%>
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
    <section class="vh-60" style="background-color: #9de2ff;">
        <div class="container py-3 h-100">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <h3>Transaction Details</h3>
                        </div>

                    </div>
                    <div class="card-body">
                        <table class="table table-borderless">
                            <tbody>
                            <tr class="form-group">
                              <td><label for="bene_email">Bene Name</label></td>
                                <td><input type="email" class="form-control" id="bene_email"
                                           name="bene_email" value="${beneDetails.email}" readonly/></td>
                            </tr>
                            <tr class="form-group">
                                <td><label for="beneficiary_account_number">Bene Account Number</label></td>
                                <td><input type="number" class="form-control" id="beneficiary_account_number"
                                           name="beneficiary_account_number"
                                           value="${beneDetails.beneficiary_account_number}" readonly/></td>
                            </tr>
                            <tr class="form-group">
                                <td><label for="swift_code">Swift Code:</label></td>
                                <td><input type="text" class="form-control" id="swift_code"
                                           name="swift_code" value="${beneDetails.swift_code}" readonly/></td>
                            </tr>
                            <tr class="form-group">
                                <td><label for="exchange_rate">Exchange Rate for INR
                                    to ${beneDetails.beneficiary_account_currency}</label></td>
                                <td><input type="number" class="form-control" id="exchange_rate"
                                           name="exchange_rate" value="${beneDetails.exchange_rate}" readonly/></td>
                            </tr>
                            <tr class="form-group">
                                <td><label for="amount">Amount in INR:</label></td>
                                <td><input type="number" class="form-control" id="amount" name="amount"
                                           placeholder="Enter AMount"/></td>
                            </tr>
                            <tr class="form-group">
                                <td><label for="converted_amount">Amount in ${beneDetails.beneficiary_account_currency} :</label></td>
                                <td><input type="number" class="form-control" id="converted_amount" name="converted_amount"
                                           placeholder="Converted AMount" readonly/></td>
                            </tr>
                            <tr class="form-group">
                                <td>Transfer Type</td>
                                <td>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" class="custom-control-input" id="instant_transfer"
                                               name="transfer_type" value="instant_transfer">
                                        <label class="custom-control-label" for="instant_transfer">Instant Transfer</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" class="custom-control-input" id="delayed_transfer"
                                               name="transfer_type" value="delayed_transfer">
                                        <label class="custom-control-label" for="delayed_transfer">Delayed Transfer</label>
                                    </div>
                                </td>
                            </tr>
                            <tr class="form-group">
                              <td>

                              </td>
                              <td >
                                <div class="row" id = "instant_transfer_variable" >
                                  <div class="col-sm-6">
                                    <input type="number" class="form-control" id="min_exchange_rate" name="min_exchange_rate"
                                           placeholder="Enter min Exchange Rate"/>
                                  </div>

                                <div class="col-sm-6">
                                  <input type="number" class="form-control" id="waiting_period" name="waiting_period"
                                         placeholder="Enter waiting period"/>
                                </div>
                                </div>
                              </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer">
                        <div class="float-right">
                            <button class="btn btn-outline-primary" role="button" id="initiateTransaction">Initiate
                                Transaction</button>
                        </div>
                    </div>
                </div>

        </div>
    </section>
</div>

<!-- The Modal -->
<div class="modal fade" id="processingModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Modal body -->
            <div class="modal-body">
                Transaction Initiated..
            </div>
        </div>
    </div>
</div>
<script>
  $(document).ready(function(){

      $("#instant_transfer_variable").fadeOut();
      $("#instant_transfer").click(function(){
          $("#instant_transfer_variable").fadeOut();
      });

      $("#amount").keyup(function(){
          let exchangeRate = ${beneDetails.exchange_rate};
          let convertAmount = $(this).val()*exchangeRate;
          $("#converted_amount").val(convertAmount);
      });

      $("#delayed_transfer").click(function(){
        $("#instant_transfer_variable").fadeIn();
      });

      $("#initiateTransaction").click(function (){
          $("#processingModal").modal('show');
          setTimeout(function(){
              const url = "${contextPath}/transaction";
              $(location).attr('href',url);
          },2000);
      });


  });
</script>
</body>
</html>
