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

            <?php if(($_SESSION['user_role'] == 'super_admin') || ($_SESSION['user_role'] == 'teacher') ){ ?>
                <!-- Main Content Panel -->

                <?php

                if(isset($_GET['source'])){
                    $source = $_GET['source'];
                }else{
                    $source = "";
                }

                switch($source){
                    case 'all_contact':
                        include "contact-forms/all_contact.php";
                        break;
                    default:
                        invalid_url();
                }

                ?>

                <?php
            }else{
               invalid_url();
            }
            ?>

        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->

<?php include("includes/admin_footer.php") ?>