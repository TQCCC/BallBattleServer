<?php
    require_once './mysql/mysql_connect.php';
    $sql = "select name,level,publish_date from rank order by level desc";
    $result = mysql_query($sql);
    while ($row = mysql_fetch_array($result)) {
        echo "Name:".$row['name']."|";
        echo "Level:".$row['level']."|";
        echo "Time:".$row['publish_date']."<br>";
    }
    mysql_close();
 ?>
