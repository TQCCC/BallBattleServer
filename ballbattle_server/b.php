<?php
    require_once './mysql/mysql_connect.php';
    $sql = "select guid,type,publish_date from play";
    $result = mysql_query($sql);
    while ($row = mysql_fetch_array($result)) {
        echo "GUID:".$row['guid']."|";
        echo "Type:".$row['type']."|";
        echo "Time:".$row['publish_date']."<br>";
    }
    mysql_close();
 ?>
