<?php @include_once('engine.php'); 
session_start();
$_SESSION['logged'] = false;

?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF8">
        <meta title="Sprawdz NIP">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="main.css">
    </head>
    <body>
        
        
        <div class="container">
            
            <?php 
            
                if ($_SESSION['logged'] == false){
                    @include_once('login.php');
                }
                else{
                    @include_once('dashboard.php');
                }
            
            ?>
            
        </div>
        
        
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>