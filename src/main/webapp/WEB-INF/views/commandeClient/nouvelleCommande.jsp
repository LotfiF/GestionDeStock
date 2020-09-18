<%@ include file="/WEB-INF/views/includes/includes.jsp" %>
<!DOCTYPE html>
<html lang="fr">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Gestion de stock</title>

  <!-- Custom fonts for this template-->
  <link href="<%=request.getContextPath() %>/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="<%=request.getContextPath() %>/resources/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">


   
   <%@ include file="/WEB-INF/views/menu_left/leftMenu.jsp" %> 
   

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">
      
        
   <%@ include file="/WEB-INF/views/menu_top/topMenu.jsp" %>  
        
        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800"><fmt:message code="commande.client.nouveau" /></h1>
          
                    <!-- DataTales Example -->
          <div class="card shadow mb-4">
               <div class="alert alert-danger" id="notFoundMsgBlock">
                   <fmt:message code="commande.client.article.not.found" />
               </div>
               <div class="alert alert-danger" id="clientNotSelectedMsgBlock">
                   <fmt:message code="commande.client.select.client.msg.erreur" />
               </div>
               <div class="alert alert-danger" id="unexcpectedErrorMsgBlock">
                   <fmt:message code="commande.client.select.client.unexpected.error" />
               </div>
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary"><fmt:message code="common.commande" /></h6>
            </div>
            <div class="card-body">
            <form action="/mvc/commandeClient/enregistrerCommande" enctype="multipart/form-data" role="form">
            <div class="form-row">
                <div class="col-md-4 mb-3">
                     <label><fmt:message code="common.code" /></label>
                     <input class="form-control" placeholder="Code" id="codeCommande" value = "${code }" disabled />
                </div>
                <div class="col-md-4 mb-3">
                     <label><fmt:message code="common.date" /></label>
                     <input class="form-control" placeholder="Date" id="dateCommande" value = "${dateCde }" disabled />
                </div>
                <div class="col-md-4 mb-3">
                     <label><fmt:message code="common.client" /></label>
                     <select class = "form-control" id="listClients">
                     <option value="-1"><fmt:message code="commande.client.select.client" /></option>
                          <c:forEach items = "${clients }" var = "clt">
                                   <option value = "${clt.getIdClient() }">${clt.getNom() }</option>
                          </c:forEach>
                     </select>
                </div>
            </div>
            
             <div class="panel-footer">
                   <button type="submit" class="btn btn-primary"><i class="fa fa-save">&nbsp;<fmt:message code="common.enregistrer" /></i></button>
                   <a href="<c:url value="/commandeClient/" />" class="btn btn-danger"><i class="fa fa-arrow-left">&nbsp;<fmt:message code="common.annuler" /></i></a>
              </div>
             </form>
           </div>
          </div>
          
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary"><fmt:message code="commande.client.detail" /></h6>
            </div>

            <div class="card-body">
              <div class="table-responsive">
            <div class="form-row">  
               <div class="col-md-4 mb-3">
                   <label><fmt:message code="common.article" /></label>
                   <input class="form-control" type = "text" id="codeArticle_search" placeholder="Merci de saisir un code Article" /> 
               </div>
            </div>
                <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4"><div class="row"><div class="col-sm-12 col-md-6"></div></div><div class="row"><div class="col-sm-12"><table class="table table-bordered dataTable" id="dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
                  <thead>
                    <tr role="row">
                    <th class="sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Article: activate to sort column descending" style="width: 50px;"><fmt:message code="common.article" /></th>
                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Quantité: activate to sort column ascending" style="width: 50px;"><fmt:message code="common.qte" /></th>
                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Prix Unitaire TTC: activate to sort column ascending" style="width: 50px;"><fmt:message code="common.prixUnitaireTTC" /></th>
                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Total: activate to sort column ascending" style="width: 50px;"><fmt:message code="common.total" /></th>
                    <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Actions: activate to sort column ascending" style="width: 50px;"><fmt:message code="common.actions" /></th>
                    </tr>
                  </thead>
                   <tbody id=detailNouvelleCommande>
                   <tr></tr>              
                </tbody>
                </table>
                </div>
                </div>
               </div>
               </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2019</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="<%=request.getContextPath() %>/resources/vendor/jquery/jquery.min.js"></script>
  <script src="<%=request.getContextPath() %>/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="<%=request.getContextPath() %>/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="<%=request.getContextPath() %>/resources/js/sb-admin-2.min.js"></script>
  
        <!-- Custom JavaScript files-->
  <script src="<%=request.getContextPath() %>/resources/javascript/commandeClient.js"></script>

</body>

</html>
