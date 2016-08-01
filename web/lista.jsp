<%@page import="java.io.File"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
        <meta name="author" content="GeeksLabs">
        <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
        <link rel="shortcut icon" href="img/favicon.png">

        <title></title>


        <link href="css/bootstrap.min.css" rel="stylesheet">

        <link href="css/bootstrap-theme.css" rel="stylesheet">

        <link href="css/elegant-icons-style.css" rel="stylesheet" />
        <link href="css/font-awesome.min.css" rel="stylesheet" />

        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://code.getmdl.io/1.1.3/material.cyan-light_blue.min.css">

        <script src="https://code.getmdl.io/1.1.3/material.min.js"></script>
        <link rel="stylesheet" href="https://code.getmdl.io/1.1.3/material.indigo-pink.min.css">
        <!-- Material Design icon font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

        <link href="css/style.css" rel="stylesheet">
        <link href="css/style-responsive.css" rel="stylesheet" />
        <script src="js/jquery-1.10.2.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/jquery.toaster.js"></script>
       	<style>

            .mdl-cell {
                box-sizing: border-box;
                height: 200px;
                padding-top: 4px;
                color: white;
                margin:8px;
            }
            .mdl-grid:first-of-type .mdl-cell {
                height: auto;
            }
            .demo-card-event.mdl-card {
                display: inline-block;
                background: #3E4EB8;
            }
            .demo-card-event > .mdl-card__actions {
                border-color: rgba(255, 255, 255, 0.2);
            }
            .demo-card-event > .mdl-card__title {
                align-items: flex-start;
            }
            .demo-card-event > .mdl-card__title > h4 {
                margin-top:0;
                margin-bottom:0;
                font-size: 12pt;
            }


            .demo-card-event > .mdl-card__actions {
                display: flex;
                box-sizing:border-box;
                align-items: center;

            }
            .demo-card-event > .mdl-card__actions > .material-icons {
                padding-right: 10px;
            }
            .demo-card-event > .mdl-card__title,
            .demo-card-event > .mdl-card__actions,
            .demo-card-event > .mdl-card__actions > .mdl-button {
                color: #fff;
            }
        </style>


    </head>

    <body>

        <!-- container section start -->
        <section id="container" class="">
            <!--header start-->
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
            <!--header end-->

            <!--sidebar start-->
            <aside>
                <div id="sidebar"  class="nav-collapse ">
                    <!-- sidebar menu start-->
                    <ul class="sidebar-menu">                
                        <li class="">
                            <a class="" href="/UploadFicheiros/Lista">
                                <i class="fa fa-file fa-fw"></i>
                                <span>Ficheiros</span>
                            </a>
                        </li>
                        <li class="active">
                            <a class="" href="/UploadFicheiros">
                                <i class="fa fa-cloud-upload fa-fw"></i>
                                <span>Upload</span>
                            </a>
                        </li>       
                    </ul>
                    <!-- sidebar menu end-->
                </div>
            </aside>
            <!--sidebar end-->

            <!--main content start-->
            <section id="main-content">
                <section class="wrapper">
                    <div class="row">
                        <div class="col-lg-12">
                            <section class="panel">
                                <header class="panel-heading">
                                    <span style="text-transform: uppercase">Ficheiros no servidor</span>
                                </header>
                                <div class="panel-body">

                                    <div class="mdl-grid">
                                        <% File f = new File("c:/upload");
                        
                                            File[] files = f.listFiles();
                                            for (File file : files) {
                                                if (file.isDirectory()) {
                                                    System.out.print("file : "+file);
                                                } else {
                                        %>

                                        <div class="mdl-cell mdl-cell--2-col demo-card-event mdl-card mdl-shadow--2dp">
                                            <div class="mdl-card__title mdl-card--expand">
                                                <h4>
                                                    <%=file.getName()%><br>
                                                    May 24, 2016<br>
                                                    7-11pm
                                                </h4>
                                            </div>
                                            <div class="mdl-card__actions mdl-card--border">
                                                <a href="DownloadServlet?filename=<% out.write(file.getName());%>" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
                                                    Download
                                                </a>
                                                <div class="mdl-layout-spacer"></div>
                                                <i class="material-icons">inbox</i>
                                            </div>

                                        </div>
                                        <%
                                                }
                                            }

                                        %>
                                    </div>
                                    <a href="" data-toggle="modal" data-target="#fileUpload" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored" style="float: right"><i class="material-icons">cloud_upload</i></a>
                                </div>
                        </div>
                </section>








            </section>
        </section>
        <!--main content end-->
    </section>

    <div class="modal fade" id="fileUpload" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document" style="width: 500px">
            <div class="modal-content">
                <form class="form-horizontal"  action="" method="post" enctype="multipart/form-data">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Upload de File</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">.</label>
                            <div class="form-group">
                                <input  type="file" id="files" name="files" multiple="multiple">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label"></label>
                            <div class="form-group">

                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-warning" data-dismiss="modal">Cancelar</button>
                        <button type="button"  class="btn btn-primary" id="btnUpload">Upload</button>
                    </div>
                </form>
            </div>
        </div>
    </div>                        
</body>
<script>
    $("#btnUpload").click(function () {
        var snackbarContainer = document.querySelector('#demo-snackbar-example');
        var showSnackbarButton = document.querySelector('#demo-show-snackbar');
        var dados = new FormData($('#fileUpload').find('form')[0]);
        dados.append("file", $("#files")[0].files[0]);
        $.ajax({
            type: 'POST',
            url: 'upload',
            data: dados,
            enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            beforeSend: function () {
            },
            success: function (data) {

                $('#fileUpload').modal('toggle');
                $('#fileUpload').on('hidden.bs.modal', function () {
                    $(this).find("input,textarea,select").val('').end();
                });
                $.toaster({
                    message: 'Ficheiro carregado com sucesso!', title: 'Ficheiro', priority: 'success'
                });
            }

        });
    });
</script>

</html>
