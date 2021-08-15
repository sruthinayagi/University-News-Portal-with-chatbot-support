<?php
session_start();
include('includes/config.php');
error_reporting(0);
if(strlen($_SESSION['login'])==0)
  { 
header('location:index.php');
}
else{
function fetch_data(){
    $output='';
    $connect= mysqli_connect("localhost","root","","newsportal");
    $query="select * from tblfaculty order by facultyname asc";
    $result=mysqli_query($connect,$query);
    while($row=mysqli_fetch_array($result)){
        $output.='
        <tr>
            <td> '. $row["facultyid"] .' </td>
            <td> '. $row["facultyname"] .' </td>
            <td> '. $row["facultymailid"] .' </td>
            <td> '. $row["facultyschool"] .' </td>
            <td> '. $row["coursestaught"] . '</td>
        </tr>
        ';
    }
    return $output;
}     
if(isset($_POST["create_pdf"]))  
 {  
      require_once('admin/tcpdf/tcpdf.php');  
      $obj_pdf = new TCPDF('L', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);  
      $obj_pdf->SetCreator(PDF_CREATOR);  
      $obj_pdf->SetTitle("Export as PDF");  
      $obj_pdf->SetHeaderData('', '', PDF_HEADER_TITLE, PDF_HEADER_STRING);  
      $obj_pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));  
      $obj_pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));  
      $obj_pdf->SetDefaultMonospacedFont('helvetica');  
      $obj_pdf->SetFooterMargin(PDF_MARGIN_FOOTER);  
      $obj_pdf->SetMargins(PDF_MARGIN_LEFT, '2', PDF_MARGIN_RIGHT);  
      $obj_pdf->setPrintHeader(false);  
      $obj_pdf->setPrintFooter(false);  
      $obj_pdf->SetAutoPageBreak(TRUE, 10);  
      $obj_pdf->SetFont('helvetica', '', 12);  
      $obj_pdf->AddPage();  
      $content = '';  
      $content .= '  
      <h3 align="center">University Faculty List</h3><br /><br />  
      <table border="1" cellspacing="0" cellpadding="5">  
           <tr>  
                  
                <th width="10%">Faculty Id</th>
                <th width="20%">Faculty Name</th>
                <th width="30%">Email</th>  
                <th width="15%">School</th>    
                <th width="20%">Courses Taken</th>
           </tr>  
      ';  
      $content .= fetch_data();  
      $content .= '</table>';  
      $obj_pdf->writeHTML($content);  
      $obj_pdf->Output('faculties.pdf', 'I');  
 }                     
?>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>News Portal | Faculty</title>
    <link rel = "icon" href="https://img.icons8.com/dusk/64/000000/news.png"
        type = "image/x-icon"> 

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <?php include('includes/header.php');?>
    <!-- Page Content -->
    <div class="container">
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}
#customers tr:nth-child(odd){background-color: #f2f2f2;}
#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #00ccff;
  color: white;
}
</style>
<?php

          $result = mysqli_query($con,"SELECT * FROM tblfaculty");

            echo "<table border='2' id='customers'>
            <tr>
            <th >Faculty Id</th>
            <th>Faculty Name</th>
            <th>Email</th>  
            <th>School</th>    
            <th>Courses Taken</th>
            </tr>";
            echo fetch_data();
            echo "</table>";                                                                    

?>
<br>
<form method=post>
    <input type="submit" name="create_pdf" class="btn btn-danger" value="View as PDF"/>
</form>
</br>

<?php 
$pagetype='faculty';
$query=mysqli_query($con,"select PageTitle,Description from tblpages where PageName='$pagetype'");
while($row=mysqli_fetch_array($query))
{

?>
      <h1 class="mt-4 mb-3"><?php echo htmlentities($row['PageTitle'])?>
  
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.php">Home</a>
        </li>
        <li class="breadcrumb-item active">Faculty</li>
      </ol>

      <!-- Intro Content -->
     
      <!-- /.row -->
<?php } ?>
    
    </div>
    <!-- /.container -->

    <!-- Footer -->
 <?php include('includes/footer.php');?>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
<?php } ?>