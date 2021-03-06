<!-- main-header -->
<div class="main-header sticky side-header nav nav-item">
    <div class="container-fluid">
        <div class="main-header-left ">
            <div class="responsive-logo">
                <a href="/"><img src="{{ asset('img/brand/logo.png') }}" class="logo-1" alt="logo"></a>
                <a href="/"><img src="{{ asset('img/brand/logo-white.png') }}" class="dark-logo-1" alt="logo"></a>
                <a href="/"><img src="{{ asset('img/brand/favicon.png') }}" class="logo-2" alt="logo"></a>
                <a href="/"><img src="{{ asset('img/brand/favicon.png') }}" class="dark-logo-2" alt="logo"></a>
            </div>
            <div class="app-sidebar__toggle" data-toggle="sidebar">
                <a class="open-toggle" href="empty#"><i class="header-icon fe fe-align-left" ></i></a>
                <a class="close-toggle" href="empty#"><i class="header-icons fe fe-x"></i></a>
            </div>

        </div>
        <div class="main-header-right">
            <div class="nav nav-item  navbar-nav-right ml-auto">
                <div class="nav-link" id="bs-example-navbar-collapse-1">
                    <form class="navbar-form" role="search">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search">
                            <span class="input-group-btn">
                                            <button type="reset" class="btn btn-default">
                                            <i class="fas fa-times"></i>
                                            </button>
                                            <button type="submit" class="btn btn-default nav-link resp-btn">
                                                <svg xmlns="http://www.w3.org/2000/svg" class="header-icon-svgs" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search">
                                                    <circle cx="11" cy="11" r="8"></circle>
                                                    <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                                                </svg>
                                            </button>
                                        </span>
                        </div>
                    </form>
                </div>
                <div class="dropdown main-profile-menu nav nav-item nav-link">
                    <a class="profile-user d-flex" href="empty"><img alt="" src="{{ asset('img/faces/16.jpg') }}"></a>
                    <div class="dropdown-menu">
                        <div class="main-header-profile bg-primary p-3">
                            <div class="d-flex wd-100p">
                                <div class="main-img-user"><img alt="" src="{{ asset('img/faces/16.jpg') }}" class=""></div>
                                <div class="ml-3 my-auto">
                                    <h6>{{ get_data_user('admins','name') }}</h6>
                                    <span>Premium Member</span>
                                </div>
                            </div>
                        </div>
                        <a class="dropdown-item" href="empty"><i class="bx bx-cog"></i> Edit Profile</a>
                        <a class="dropdown-item" href="{{ route('get_admin.logout') }}" title="????ng xu???t"><i class="bx bx-log-out"></i> Sign Out</a>
                    </div>
                </div>
{{--                <div class="dropdown main-header-message right-toggle">--}}
{{--                    <a class="nav-link pr-0" data-toggle="sidebar-right" data-target=".sidebar-right">--}}
{{--                        <svg xmlns="http://www.w3.org/2000/svg" class="header-icon-svgs" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-menu">--}}
{{--                            <line x1="3" y1="12" x2="21" y2="12"></line>--}}
{{--                            <line x1="3" y1="6" x2="21" y2="6"></line>--}}
{{--                            <line x1="3" y1="18" x2="21" y2="18"></line>--}}
{{--                        </svg>--}}
{{--                    </a>--}}
{{--                </div>--}}
            </div>
        </div>
    </div>
</div>
<!-- /main-header -->
