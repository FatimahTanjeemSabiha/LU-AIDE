<!--This is admin header part -->
<?php include("includes/admin_header.php"); ?>
<!--This is admin header part end -->

    <!-- Sidebar -->
    <?php include("includes/admin_sidebar.php") ?>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <?php include("includes/admin_topbar.php") ?>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">
                <?php
                $users_role = $_SESSION['user_role'];
                if($users_role != 'student'){ ?>

                <?php include("includes/admin_content.php") ?>
                <?php }else{
                    echo "NO DATA FOUND";
                } ?>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

<?php include("includes/admin_footer.php") ?>