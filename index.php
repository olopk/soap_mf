<?php 
@include('login_check.php');
session_start();

if($_GET['page']=='logout'){
    $_SESSION['logged'] = false;
}

?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF8">
        <meta title="Sprawdz NIP">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="main.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        
        <div class="container">
            <?php
            
                if($_POST['submit'] == 'send'){
                  $_SESSION['logged'] = loginCheck($_POST['login'], $_POST['pass']);
                }
                if ($_SESSION['logged'] == false){
                    @include('header.php');
                    @include_once('login.php');
                }
                else{
                    @include('header.php');
                    if($_GET['page'] == 'settings'){
                        @include_once('engine.php');
                        @include('settings.php');
                        if($_POST['save'] == 'save'){
                            echo $_POST['dbname'];
                            echo $_POST['driver'];
            credentialsSave($_POST['driver'],$_POST['servername'],$_POST['login'],$_POST['password'],$_POST['dbname'],$_POST['tbname'],$_POST['col_nip'],$_POST['col_contractor']);
                        }
                    }
                    else{
                        @include_once('engine.php');
                        @include_once('dashboard.php');
                    }
                }       
            ?>           
        </div>
        
        
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>