<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
<a href="{{url('/')}}" class="brand-link">
      <img src="{{asset('assets/img/d.png')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">DSS</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{asset('assets/img/amongus.webp')}}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Admin</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
          <a href="{{url('home')}}" class="nav-link">
              <i class="nav-icon fas fa-home"></i>
              <p>
                Home
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="{{url('criteriaweights')}}" class="nav-link">
              <i class="nav-icon fas fa-cube"></i>
              <p>
                Criteria & Weight
              </p>
            </a>
          </li>
          <li class="nav-item">
          <a href="{{url('criteriaratings')}}" class="nav-link">
              <i class="nav-icon fas fa-cubes"></i>
              <p>
                Criteria Rating
              </p>
            </a>
          </li>
          <li class="nav-item">
          <a href="{{url('alternatives')}}" class="nav-link">
              <i class="nav-icon fas fa-database"></i>
              <p>
                Alternative & Score
              </p>
            </a>
          </li>
          <li class="nav-header">Result</li>
          <li class="nav-item">
          <a href="{{url('decision')}}" class="nav-link">
                <i class="nav-icon fas fa-table"></i>
              <p>
                Decision Matrix
            </p>
            </a>
          </li>
          <li class="nav-item">
          <a href="{{url('normalization')}}" class="nav-link">
              <i class="nav-icon far fa-chart-bar"></i>
              <p>
                Normalization
              </p>
            </a>
          </li>
          <li class="nav-item">
          <a href="{{url('rank')}}" class="nav-link">
              <i class="nav-icon fas fa-chart-line"></i>
              <p>
                Rank
              </p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
