<?php
    if (isset($_GET['guid'])) {
        require_once '../mysql/mysql_connect.php';
        $guid = escape_data($_GET['guid']);
        $type = escape_data($_GET['type']);
        $sql = "insert into play(guid,type,publish_date)values('$guid','$type',NOW())";

        $result = mysql_query($sql);

        mysql_close();

        header('content-type:application:json;charset=utf8');
        header('Access-Control-Allow-Origin:*');
        header('Access-Control-Allow-Methods:POST');
        header('Access-Control-Allow-Methods:GET');
        header('Access-Control-Allow-Headers:x-requested-with,content-type');

        echo "GOOD";

    }

 ?>
