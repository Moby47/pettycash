<?php
require("assets/functions/functions.php");
require("assets/functions/reporting_functions.php");
session_start();
redirect ();
redirect_users();
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>Reports</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="assets/lineicons/style.css">    
    
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <script src="assets/js/chart-master/Chart.js"></script>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

  <div class="container-fluid col-md-12">


<!-- .............................................................................-->
<div class="white-panel pn"><!--panel-->

                      			<div class="white-header">
						  			<h4 class="black">CASH RECORDS</h4>
                      			</div>
	                      		<div class="centered">
                                      
                                        
<form method="POST" action="export.php" class="form-inline text-center margin_bottom">

<b>FROM</b>
<input type="date" name="start_cash" class="form-control margin_bottom">   
<b>TO</b>
<input type="date" name="end_cash" class="form-control margin_bottom">
<input type="submit" name="find_cash" value="View" class="btn btn-theme margin_bottom">

</form>

<?php export_cash_details(); ?>


                                  </div>
                                  
                     </div><!--panel ends-->
   
<!-- .............................................................................-->                           








<!-- .............................................................................-->
<div class="white-panel pn"><!--panel-->

                      			<div class="white-header">
						  			<h4 class="black">REQUESTS RECORDS</h4>
                      			</div>
	                      		<div class="centered">
                                      
                                        
<form method="POST" action="export.php" class="form-inline text-center margin_bottom">

<b>FROM</b>
<input type="date" name="start_req" class="form-control margin_bottom">   
<b>TO</b>
<input type="date" name="end_req" class="form-control margin_bottom">
<input type="submit" name="find_req" value="View" class="btn btn-theme margin_bottom">

</form>
<?php export_request_details(); ?>

                                  </div>
                                  
                     </div><!--panel ends-->
   
<!-- .............................................................................-->    


   










  </div><!--container-->


    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/jquery-1.8.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="assets/js/jquery.sparkline.js"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>
    
    <script type="text/javascript" src="assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="assets/js/gritter-conf.js"></script>

    <!--script for this page-->
    <script src="assets/js/sparkline-chart.js"></script>    
	<script src="assets/js/zabuto_calendar.js"></script>	
	
	
	
	<script type="application/javascript">
        $(document).ready(function () {
            $("#date-popover").popover({html: true, trigger: "manual"});
            $("#date-popover").hide();
            $("#date-popover").click(function (e) {
                $(this).hide();
            });
        
            $("#my-calendar").zabuto_calendar({
                action: function () {
                    return myDateFunction(this.id, false);
                },
                action_nav: function () {
                    return myNavFunction(this.id);
                },
                ajax: {
                    url: "show_data.php?action=1",
                    modal: true
                },
                legend: [
                    {type: "text", label: "Special event", badge: "00"},
                    {type: "block", label: "Regular event", }
                ]
            });
        });
        
        
        function myNavFunction(id) {
            $("#date-popover").hide();
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
            console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
        }
    </script>
  

  </body>
</html>

