<?php 
   $date = isset($_POST['fecha']);
   $dateFrom = isset($_POST['fechainicial']);
   $dateTo = isset($_POST['fechafinal']);
   $hourFrom = isset($_POST['horainicial']);
   $hourTo = isset($_POST['horafinal']);
   $sensor = isset($_POST['sensor']);
   $response = array();
    if($conn = mysqli_connect("localhost:3306", "root", "","Iot")){
        $response=array('error' => false,
                   'message' => "Conexion Establecida :)");
    }
    else{
        $response=array('error' => true,
                   'massage' => "Conexion Fallida :(");
    }

    if($date == "" &
       $dateFrom == "" &
       $dateTo == "" &
       $hourFrom == "" &
       $hourTo == "" &
       $sensor == "") {
       $response = array('error' => false, 'message' => "Ninguna variable a sido indicada.");
       }       
          if($stnt = $conn->prepare("SELECT * FROM lectura_sensores")){
             $stnt->execute();
             $stnt->store_result();
             $stnt->bind_result($v1,$v2,$v3,$v4,$v5);
             $readings=array();
             while($stnt->fetch()){
                //$readings['id'] = $v1;
                $readings[$v1]['fecha'] = $v2;
                $readings[$v1]['hora'] = $v3;
                $readings[$v1]['sensor'] = $v4;
                $readings[$v1]['lectura'] = $v5;
             }
   $stnt->close();
   $response += $readings;
          }
       
       $json = json_encode($response);
       echo $json;
       

 ?>