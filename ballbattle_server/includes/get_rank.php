<?php
    if (isset($_GET['get_rank'])) {
        require_once '../mysql/mysql_connect.php';
        $sql = "select name,level,publish_date from rank order by level desc";
        $result = mysql_query($sql);
        $num = mysql_num_rows($result);
        $response = "";
        $c = 0;
        if ($num!=0) {
            $response = "服务器中排名：\n\n";
            $response .= "   昵称----------关卡-----------时间\n\n";
            while ($row=mysql_fetch_array($result)) {
                $c++;
                if ($c>100) {
                    break;
                }
                $response .= $c.".";
                $n = $row["name"];
                while(strlen($n)<15){
                    $n.="-";
                }

                $response .= $n;
                $response .= $row["level"]."--------";
                $response .= $row["publish_date"]."\n\n";
            }
        }else{
            $response = "服务器排名\n";
            $response .= "尚无排名\n";
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
