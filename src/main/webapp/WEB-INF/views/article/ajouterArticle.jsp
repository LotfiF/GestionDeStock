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
          <h1 class="h3 mb-4 text-gray-800"><fmt:message code="article.nouveau" /></h1>

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary"><fmt:message code="article.nouveau" /></h6>
            </div>
            <div class="card-body">
            <c:url value="/article/enregistrer" var="urlEnregistrer" />
              <f:form modelAttribute="article" action="${urlEnregistrer }" enctype="multipart/form-data" role="form">
                <f:hidden path="idArticle"/>
                <f:hidden path="photo"/>
                <div class="form-group">
                     <label><fmt:message code="common.codeArticle" /></label>
                     <f:input path="codeArticle" class="form-control" placeholder="Code article" />
                </div>
                <div class="form-group">
                     <label><fmt:message code="common.designation" /></label>
                     <f:input path="designation" class="form-control" placeholder="Désignation" />
                </div>
                <div class="form-group">
                     <label><fmt:message code="common.prixUnitaireHT" /></label>
                     <f:input id="prixUnitaireHT" path="prixUnitaireHT" class="form-control" placeholder="Prix unitaire HT" />
                </div>
                <div class="form-group">
                     <label><fmt:message code="common.tauxTva" /></label>
                     <f:input id="tauxTva" path="tauxTva" class="form-control" placeholder="Taux TVA" />
                </div>
                <div class="form-group">
                     <label><fmt:message code="common.prixUnitaireTTC" /></label>
                     <f:input id="prixUnitaireTTC" path="prixUnitaireTTC" class="form-control" placeholder="Prix unitaire TTC" />
                </div>
                <div class="form-group">
                     <label><fmt:message code="common.parametrage.category" /></label>
                     <f:select class="form-control" path="category.idCategory" items="${categories }" itemLabel="codeCategory" itemValue="idCategory" />
                </div>
                
                <div class="form-group">
                     <label><fmt:message code="common.photo" /></label>
                     <input type="file" class="form-control-file" name="file">
                </div>
              
              <div class="panel-footer">
                   <button type="submit" class="btn btn-primary"><i class="fa fa-save">&nbsp;<fmt:message code="common.enregistrer" /></i></button>
                   <a href="<c:url value="/article/" />" class="btn btn-danger"><i class="fa fa-arrow-left">&nbsp;<fmt:message code="common.annuler" /></i></a>
              </div>
             </f:form>
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
  <script src="<%=request.getContextPath() %>/resources/javascript/article.js"></script>

</body>

</html>
