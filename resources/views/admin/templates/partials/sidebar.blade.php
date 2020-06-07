<div id="layoutSidenav">
  <div id="layoutSidenav_nav">
    <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
      <div class="sb-sidenav-menu">
        <div class="nav">
          <div class="sb-sidenav-menu-heading">Core</div>
          <a class="nav-link" href="{{ route('admin.book.index') }}">
            <div class="sb-nav-link-icon"><i class="fas fa-book"></i></div>
            Buku
          </a>
          <a class="nav-link" href="{{ route('admin.author.index') }}">
            <div class="sb-nav-link-icon"><i class="fas fa-pen"></i></div>
            Penulis
          </a>
          <a class="nav-link" href="{{ route('admin.borrow.index') }}">
            <div class="sb-nav-link-icon"><i class="fas fa-suitcase-rolling"></i></div>
            Peminjaman
          </a>
          <a class="nav-link" href="{{ route('admin.report.top-book') }}">
            <div class="sb-nav-link-icon"><i class="fab fa-angellist"></i></div>
            Buku yang sering dipinjam
          </a>
          <a class="nav-link" href="{{ route('admin.report.top-user') }}">
            <div class="sb-nav-link-icon"><i class="fab fa-angellist"></i></div>
            User Teraktif
          </a>
          <a class="nav-link" href="tables.html">
            <div class="sb-nav-link-icon"><i class="fas fa-user"></i></div>
            User
          </a>
        </div>
      </div>
    </nav>
  </div>
  <div id="layoutSidenav_content">