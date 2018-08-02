<?php

    $servername = 'localhost';
    $username = 'root';
    $password = '';
    $records = '';
    $records_checked = '';
    $wsdl = 'http://localhost/soap/wsdl.xml';

    try{
        $conn = new PDO("mysql:host=$servername;dbname=subiekt", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);  
//        echo "jest git";
        
        $records = $conn->query('SELECT * FROM kontrahenci');
        
    }
    catch(PDOException $e){
        echo "nie jest git: " . $e->getMessage();
    }

    try{
        $conn = new PDO("mysql:host=$servername;dbname=aplikacja", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
//        echo "jest git tutaj tez";
        
        $client = new SoapClient($wsdl);
//      $funkcje = $client->__getFunctions();
        
        foreach($records as $record){
            $response = $client->__soapCall("SprawdzNIP", array($record['nip']));
            //print_r($response);
            
            $array = json_decode(json_encode($response), True);
            
            //echo $array['Kod'];
            
            $insert = "INSERT INTO kontrahent_status (nazwa, nip, kod, komunikat) VALUES ('".$record['nazwa']."', '".$record['nip']."', '".$array['Kod']."', '".$array['Komunikat']."')";
            
            //echo $insert."</br></br></br>";
            
            //$conn->query($insert);   
        }
        $records_checked = $conn->query('SELECT * FROM kontrahent_status');
        
        
//        foreach($funkcje as $element){
//            echo $element . "</br>";
//        }
        
    }
    catch(PDOException $e){
        echo "nie jest git 2 :" . $e->getMessage();
    }

//foreach($records as $row){
//    echo $row['id'] . ' ' . $row['nazwa'] . $row['nip'] ."</br>";
//}


?>