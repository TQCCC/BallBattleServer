<?php
    if (isset($_GET['name'])) {
        require_once '../mysql/mysql_connect.php';
        $name = escape_data($_GET['name']);
        $level = escape_data($_GET['level']);
        $sql = "insert into rank(name,level,publish_date)values('$name','$level',NOW())";
        $result = mysql_query($sql);

        if (mysql_affected_rows() == 1) {
            $response = "".mysql_insert_id();
        }else {
            $response = 'false';
        }
        mysql_close();

        header('content-type:application:json;charset=utf8');
        header('Access-Control-Allow-Origin:*');
        header('Access-Control-Allow-Methods:POST');
        header('Access-Control-Allow-Methods:GET');
        header('Access-Control-Allow-Headers:x-requested-with,content-type');

        echo $response;
    }

 ?>
