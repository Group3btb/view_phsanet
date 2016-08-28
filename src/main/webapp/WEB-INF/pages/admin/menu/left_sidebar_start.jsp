<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

      <!-- ========== Left Sidebar Start ========== -->

            <div class="left side-menu">
                <div class="sidebar-inner slimscrollleft">
                    <!--- Divider -->
                    <div id="sidebar-menu">
                        <ul>
                          <li class="text-muted menu-title">Admin PhsarNet</li>
                            <li>
                                <a href="/admin" class="waves-effect active"><i class="ti-home"></i> <span> Dashboard </span></a>
                            </li>
                            <li class="has_sub">
                                <a href="#" class="waves-effect"><i class="ti-menu-alt"></i><span>Manage Categories</span> </a>
                                <ul class="list-unstyled">
                                    <li><a href="/admin/maincategory">Main Category</a></li>
                                    <li><a href="/admin/category">Category</a></li>
                                    <li><a href="/admin/subcategory">Sub Category</a></li>
                                </ul>
                            </li>
                             <li class="has_sub">
                                <a href="#" class="waves-effect"><i class="ti-layers"></i><span>Manage Site</span> </a>
                                <ul class="list-unstyled">
                                    <li><a href="/admin/site">Site Management</a></li>
                                    <li><a href="/admin/sitedetail">Site Detail</a></li>
                                </ul>
                            </li>
                             <li class="has_sub">
                                <a href="#" class="waves-effect"><i class="ti-harddrives"></i><span>Manage Scrape</span> </a>
                                <ul class="list-unstyled">
                                    <li><a href="/admin/scrap">URL Scrape</a></li>
                                    <li><a href="/admin/test">Test Scrape</a></li>
                                    <li><a href="/admin/temporary">Temporary Items</a></li>
                                </ul>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
      <!-- Left Sidebar End -->