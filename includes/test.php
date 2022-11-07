<?php
    require_once 'includes/dbh.inc.php';
    require_once 'includes/functions.inc.php';
    $stats = getStats($connection);
    $fixStats = fixStats($stats);
    foreach($fixStats as $stat):
        for($i = 0; $i < sizeof($stat); $i++) {
            if ($i == 3){
                echo "<td>" .$stat[$i]. "". "</td>\n";
            } else if ($i == 4){
                echo "<td>" .$stat[$i]. "". "</td>\n";
            } else if ($i == 5){
                echo "<td>" .$stat[$i]. "". "</td>\n";
            } else if ($i == 6){
                echo "<td>" .$stat[$i]. "". "</td>\n";
            } else if ($i == 7){
                echo "<td>" .$stat[$i]. "". "</td>\n";
            } else if ($i == 8){
                echo "<td>" .$stat[$i]. "". "</td>\n";
            } else {
                echo "<td>" .$stat[$i]. "</td>\n";
            }
        }
    endforeach;
?>