<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF8">
        <meta title="Sprawdz NIP">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="main.css">
    </head>
    <body>
        <?php @include_once('engine.php'); ?>
        
        <div class="container">
            <h1>Contractor check</h1>
            <h3>This is a table created dynamically</h3>
                <table class="table table-striped">
                  <thead>
                    <tr>
                      <th scope="col">lp</th>
                      <th scope="col">Firma</th>
                      <th scope="col">Nip</th>
                      <th scope="col">Status</th>
                      <th scope="col">Ostatnia Aktualizacja</th>
                    </tr>
                  </thead>
                  <tbody>
                    
                    <?php
                      $lp = 0;
                      foreach($records_checked as $row){
                          $lp++; 
                          echo '<th scope="row">'.$lp.'</th>';
                          echo '<td>'.$row['nazwa'].'</td>';
                          echo '<td>'.$row['nip'].'</td>';
                          echo '<td>'.$row['komunikat'].'</td>';
                          echo '<td>'.$row['data_utworzenia'].'</td>';
                          echo '</tr>';
                      }
                    ?>
                  </tbody>
                </table>
        </div>
        
        
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>