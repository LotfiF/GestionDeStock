    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="javascript:void(0);">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Gestion de stock</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <c:url value="/home/" var="home" />
      <li class="nav-item">
        <a class="nav-link" href="${home }">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span><fmt:message code="common.dashboard" /></span></a>
           <!--<span>Dashboard</span></a>-->
      </li>
      
      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        <fmt:message code="common.fenetre.principale" />
      </div>
      
     <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span><fmt:message code="common.article" /></span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header"><fmt:message code="common.composant" /></h6>
            <c:url value="/article/" var="article" />
            <a class="collapse-item" href="${article }"><fmt:message code="common.article" /></a>
            <c:url value="/category/" var="category" />
            <a class="collapse-item" href="${category }"><fmt:message code="common.parametrage.category" /></a>
          </div>
        </div>
      </li>  

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span><fmt:message code="common.client" /></span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header"><fmt:message code="common.composant" /></h6>
            <c:url value="/client/" var="client" />
            <a class="collapse-item" href="${client }"><fmt:message code="common.client" /></a>
            <c:url value="/commandeClient/" var="cdeClient" />
            <a class="collapse-item" href="${cdeClient }"><fmt:message code="common.client.commande" /></a>
          </div>
        </div>
      </li>
 
       <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span><fmt:message code="common.fournisseur" /></span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header"><fmt:message code="common.composant" /></h6>
            <c:url value="/fournisseur/" var="fournisseur" />
            <a class="collapse-item" href="${fournisseur }"><fmt:message code="common.fournisseur" /></a>
            <c:url value="/commandeFournisseur/" var="cdeFournisseur" />
            <a class="collapse-item" href="${cdeFournisseur }"><fmt:message code="common.fournisseur.commande" /></a>
          </div>
        </div>
      </li>    

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        <fmt:message code="common.fenetre.secondaire" />
      </div>
      
      <!-- Nav Item - Tables -->
      <c:url value="/utilisateur/" var="user" />
      <li class="nav-item">
        <a class="nav-link" href="${user }">
          <i class="fas fa-fw fa-table"></i>
          <span><fmt:message code="common.parametrage.utilisateur" /></span></a>
      </li>

      <!-- Nav Item - Charts -->
      <c:url value="/vente/" var="vente" />
      <li class="nav-item">
        <a class="nav-link" href="${vente }">
          <i class="fas fa-fw fa-chart-area"></i>
          <span><fmt:message code="common.vente" /></span></a>
      </li>

      <!-- Nav Item - Tables -->
      <c:url value="/stock/" var="stock" />
      <li class="nav-item">
        <a class="nav-link" href="${stock }">
          <i class="fas fa-fw fa-table"></i>
          <span><fmt:message code="common.stock" /></span></a>
      </li>
      
      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->