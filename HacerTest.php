
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.0.1">
    <title>Raices de Ecuaciones</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/blog/">

    <!-- Bootstrap core CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/4.5/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/4.5/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/4.5/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/4.5/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/4.5/assets/img/favicons/safari-pinned-tab.svg" color="#563d7c">
<link rel="icon" href="/docs/4.5/assets/img/favicons/favicon.ico">
<meta name="msapplication-config" content="/docs/4.5/assets/img/favicons/browserconfig.xml">
<meta name="theme-color" content="#563d7c">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="blog.css" rel="stylesheet">
  </head>
  <body>
    <div class="container" style="background:white";>
        <header class="blog-header py-3">
          <div class="row flex-nowrap justify-content-between align-items-center">
            <div class="col-4 pt-1">
           
            </div>
            <div class="col-4 text-center">
              <a class="blog-header-logo text-dark img-responsive" href="#"><img src="https://i.pinimg.com/favicons/db9e743714841d2566fa0e107ff1cdf72af64b7f6f0dad9f3905986a.png?3214d7914dfb90a0b8c1ba396fb09aed" width="20%" height="20%"></a>
            </div>
            <div class="col-4 d-flex justify-content-end align-items-center">
            </div>
          </div>
        </header>
      
        <div class="nav-scroller py-1 mb-2 bg-dark">
          <nav class="nav d-flex justify-content-start">
            <a class="p-2 text-white" href="index.html">Inicio</a>
            <a class="p-2 text-white" href="datos.html">Nosotros</a>

            <a class="p-2 text-white" href="MANUAL.pdf" target="_blank">Guía de usuario</a>
            <a class="p-2 text-white" href="HacerTest.php?id=97">Test General</a> 
            <a class="p-2 text-white" href="https://www.youtube.com/playlist?list=PLzIyH1zIAXOIpl0yc7CQL8pw_qmoqS3zK">Recursos</a> 
          </nav>
        </div>
      


<?php

include("conexion.php");


if(isset($_GET['id'])) {
  $TestCod = $_GET['id'];
  $query0 = "SELECT * FROM test WHERE TesCod = $TestCod";
  $result0 = mysqli_query($conn, $query0);
  if(!$result0) {
    die(" Sentencia query fallida.");
  }
  $area=0;

  while ($row0 = mysqli_fetch_array($result0)){

     $area= $row0['TesAreCod'];
  }
  
  
  $query = "SELECT * FROM area WHERE AreCod = $area";
  $result00 = mysqli_query($conn, $query);
  if(!$result00) {
    die(" Sentencia query fallida.");
  }
  $nombreArea="";

  while ($row00 = mysqli_fetch_array($result00)){

     $nombreArea= $row00['AreNom'];
  }


  $query = "SELECT * FROM preguntas WHERE PreTesCod = $TestCod";
  $result = mysqli_query($conn, $query);
  if(!$result) {
    die(" Sentencia query fallida.");
  }


}

  ?>
 <br>

 <center><h2><?php echo $nombreArea ?> </h2></center>
  
        <main role="main" class="container">
          <div class="jumbotron">
        <form action="ResultadoTestVo.php?id=<?php echo $TestCod ?> " method="POST">
       
        <?php  
        $i=1;

        while ($row = mysqli_fetch_array($result)){ 
           $preCodigo = $row['PreCod'];
          ?>
            <h5>Pregunta <?php echo $i ?> </h5>

            <div class="form-group">

              <input disabled="disabled" name="pregunta<?php echo $i ?>" type="text" class="form-control" value="<?php echo $row['PreNom']; ?>"  >

              

              <?php 

              $file ="ImagenesPre/".$preCodigo.".png";
              $exists = is_file( $file );

              if($exists == true){
 ?>
                <img src="<?php echo $file ?>"> <br>

                 <?php 
              }
                  
                  $query2 = "SELECT *FROM carrera where CarAreCod = $area  ";
                  $resultado=mysqli_query($conn,$query2);
                  
             
               
                $query3 = "SELECT *FROM respuestas where ResPreCod = $preCodigo ";
                $resultado3=mysqli_query($conn,$query3);

                $n=1;

                while ($row3 = mysqli_fetch_array($resultado3)){
           ?>

          

           <input  id="rptaQ" readonly="readonly" name="pregunta<?php echo$i?>Respuesta" type="radio"  value="<?php echo $row3 ['ResCod']; ?>" > 
           <label for="rptaQ"> <?php echo $row3 ['ResNom'] ?></label><br>
               
           <?php
             $n= $n+1;
             }
             ?>

             </div>
            
            <?php
            
             $i=$i+1;
                        }            ?>

           

            <button class="btn btn-lg btn-primary" name="respuestas_TestVo"> Evaluar respuestas </button>
          </form>
</div>
        </main>


<?php include('includes/footer.php'); ?>
