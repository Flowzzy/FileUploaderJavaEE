<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>File Upload</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />

        <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
               <header class="header dark-bg">
                <div class="toggle-nav">
                    <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"></div>
                </div>

                <!--logo start-->
                <a href="fileupload.jsp" class="logo"><img src="img/logo2.png"/></span></a>
                <!--logo end-->

                <div class="nav search-row" id="top_menu" style="float:right">
                    <!--  search form start -->
                    <ul class="nav top-menu" >                    
                        <li>
                            <form class="navbar-form" >
                                <input class="form-control" placeholder="Search" type="text" >
                            </form>
                        </li>                    
                    </ul>
                    <!--  search form end -->                
                </div>

                <div class="top-nav notification-row">                
                    <!-- notificatoin dropdown start-->
            </header> 
            <!-- Bootstrap Upload Control - START -->
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            <li>
                                <a href="/UploadFicheiros"><i class="fa fa-cloud-upload fa-fw"></i> Upload</a>
                            <div id="page-wrapper">
                                <div class="container">
                                    <div id="page-wrapper">
                                        <div class="container-fluid">
                                            <div class="col-md-4"></div>
                                            <div class="col-md-4">
                                                <form action="upload" method="post" enctype="multipart/form-data">
                                                    <input type="file" id="files" name="files" multiple="multiple" />
                                                    <p style="text-align: right; margin-top: 20px;">
                                                        <input type="submit" value="Upload Files" class="btn btn-lg btn-primary" />
                                                    </p>
                                                </form>
                                            </div>
                                            <div class="col-md-4"></div>
                                        </div>
                                    </div>
                                    <!-- /.container-fluid -->
                                </div>
                                </div>
                            </li>
                            <li>
                                <a href="/UploadFicheiros/Lista"><i class="fa fa-file fa-fw"></i> Files<span class="fa arrow"></span></a>
                            </li>
                        </ul>
                    </div>
                </div>




</div>


<!-- you need to include the ShieldUI CSS and JS assets in order for the Upload widget to work -->
<link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/light-bootstrap/all.min.css" />
<script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>

<script type="text/javascript">
    jQuery(function ($) {
        $("#files").shieldUpload();
    });
</script>
<!-- Bootstrap Upload Control - END -->



</body>
</html>
