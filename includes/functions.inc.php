<?php
function getStandings($connection) {

    $sql = "SELECT *, CASE WHEN win > 0 THEN CAST((win / (win+loss)) * 100 AS DECIMAL(16,2)) ELSE 0.00 END AS percentage FROM standings ORDER BY percentage DESC, loss";
    
    $result = $connection->query($sql);

    if ($result->num_rows > 0) {
        return $result;
    }
}

function getData($connection, $table, $where, $condition){
    if(empty($where)) {
        $sql = "SELECT * FROM $table";
    } else {
        $sql = "SELECT * FROM $table WHERE $where = $condition";
    }
    $stmt = mysqli_stmt_init($connection);
    if (!mysqli_stmt_prepare($stmt, $sql)) {
        header("location: ../index.html?error=stmterror");
        exit();
    }

    mysqli_stmt_execute($stmt);

    $result = mysqli_stmt_get_result($stmt);
    if ($row = mysqli_fetch_assoc($result)) {
        return $result;
    } 
    else {
        $result = false;
    }

    mysqli_stmt_close($stmt);
}

function getStats($connection){

    $sql = "SELECT last_name, first_name, teams.team_name, player_stats.stat_type, SUM(player_stats.count) AS total, CAST(AVG(player_stats.count) AS DECIMAL(16,2)) as average FROM players INNER JOIN teams ON players.team=teams.id INNER JOIN player_stats ON players.id=player_stats.player_id GROUP BY player_id, stat_type";
    $stmt = mysqli_stmt_init($connection);
    if (!mysqli_stmt_prepare($stmt, $sql)) {
        header("location: ../index.html?error=stmterror");
        exit();
    }

    mysqli_stmt_execute($stmt);

    $result = mysqli_stmt_get_result($stmt);
    if ($row = mysqli_fetch_assoc($result)) {
        return $result;
    } 
    else {
        $result = false;
    }
    mysqli_stmt_close($stmt);
}

function getResults($connection){

    $sql = "SELECT * FROM schedule INNER JOIN results ON schedule.id = results.id";
    $stmt = mysqli_stmt_init($connection);
    if (!mysqli_stmt_prepare($stmt, $sql)) {
        header("location: ../index.html?error=stmterror");
        exit();
    }

    mysqli_stmt_execute($stmt);

    $result = mysqli_stmt_get_result($stmt);
    if ($row = mysqli_fetch_assoc($result)) {
        return $result;
    } 
    else {
        $result = false;
    }
    mysqli_stmt_close($stmt);
}

function insertStats($connection, $player_id, $team_id, $game_number, $stat_type, $count) {
    $sql = "INSERT INTO player_stats(player_id, team_id, game_number, stat_type, count) VALUES(?, ?, ?, ?, ?)";
    $stmt = mysqli_stmt_init($connection);
    if (!mysqli_stmt_prepare($stmt, $sql)) {
        header("location: ../index.html?error=stmterror");
        exit();
    }
    mysqli_stmt_bind_param($stmt, "sssss", $player_id, $team_id, $game_number, $stat_type, $count);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_close($stmt);

}

function fixStats($stats) {
    $i = 1; 
    $players = [];
    $items = []; 
    foreach($stats as $stat):
        if($i == 1){
            array_push($items, $stat['team_name'], $stat['last_name'], $stat['first_name'], $stat['average']);
        } else if($i <= 6){
            array_push($items, $stat['average']);
        } else if($i > 6) { $i = 1;
            array_push($players, $items);
            $items = [];
            array_push($items, $stat['team_name'], $stat['last_name'], $stat['first_name'], $stat['average']);
        } 
        $i++;
    endforeach;
    return $players;
}

function displayTeamLogo($img) {
    if($img == "Red Barracuda") {
        return "red.png";
    } else if($img == "Green Dragonfish") {
        return "green.png";
    } else if($img == "Blue Sharks") {
        return "blue.png";
    } else if($img == "Purple Betta") {
        return "purple.png";
    } else {
        return "rosepointe.png";
    }
}

function addResult($connection) {
    $schedules = getData($connection, "schedule", "", "");
    foreach($schedules as $schedule):
        $sql = "INSERT INTO results(game_number, date) VALUES(?, ?)";
        $stmt = mysqli_stmt_init($connection);
        if (!mysqli_stmt_prepare($stmt, $sql)) {
            header("location: ../schedule.html?error=stmterror");
            exit();
        }
        mysqli_stmt_bind_param($stmt, "is", $schedule['id'], $schedule['date']);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_close($stmt);
    endforeach;
}

function getQuotient($connection) {
    $array = array();
    $green_total_points = 0;
    $red_total_points = 0;
    $blue_total_points = 0;
    $purple_total_points = 0;
    $green_points_allowed = 0;
    $red_points_allowed = 0;
    $blue_points_allowed = 0;
    $purple_points_allowed = 0;
    $green_quotient = 0;
    $red_quotient = 0;
    $blue_quotient = 0;
    $purple_quotient = 0;
    $results = getResults($connection);

    foreach($results as $result):
        switch($result['team1']){
            case "Green Dragonfish":
                $green_total_points += $result['team1_score'];
                $green_points_allowed += $result['team2_score'];
                break;
            case "Red Barracuda":
                $red_total_points += $result['team1_score'];
                $red_points_allowed += $result['team2_score'];
                break;
            case "Blue Sharks":
                $blue_total_points += $result['team1_score'];
                $blue_points_allowed += $result['team2_score'];
                break;
            case "Purple Betta":
                $purple_total_points += $result['team1_score'];
                $purple_points_allowed += $result['team2_score'];
                break;
        }
        switch($result['team2']){
            case "Green Dragonfish":
                $green_total_points += $result['team2_score'];
                $green_points_allowed += $result['team1_score'];
                break;
            case "Red Barracuda":
                $red_total_points += $result['team2_score'];
                $red_points_allowed += $result['team1_score'];
                break;
            case "Blue Sharks":
                $blue_total_points += $result['team2_score'];
                $blue_points_allowed += $result['team1_score'];
                break;
            case "Purple Betta":
                $purple_total_points += $result['team2_score'];
                $purple_points_allowed += $result['team1_score'];
                break;
        }
    endforeach;
    $green_quotient = $green_total_points / $green_points_allowed;
    $red_quotient = $red_total_points / $red_points_allowed;
    $blue_quotient = $blue_total_points / $blue_points_allowed;
    $purple_quotient = $purple_total_points / $purple_points_allowed;
    array_push($array, $green_quotient, $red_quotient, $blue_quotient, $purple_quotient, $green_total_points, $green_points_allowed, $red_total_points, $red_points_allowed, $blue_total_points, $blue_points_allowed, $purple_total_points, $purple_points_allowed);
    return $array;
}

function getTSP($connection) {
    $sql = "SELECT players.id, last_name, first_name, teams.team_name, player_stats.stat_type, SUM(player_stats.count) AS total FROM players INNER JOIN teams ON players.team=teams.id INNER JOIN player_stats ON players.id=player_stats.player_id GROUP BY players.id ORDER BY `total` DESC;";
    $stmt = mysqli_stmt_init($connection);
    if (!mysqli_stmt_prepare($stmt, $sql)) {
        header("location: index.html?error=stmterror");
        exit();
    }

    mysqli_stmt_execute($stmt);

    $result = mysqli_stmt_get_result($stmt);
    if ($row = mysqli_fetch_assoc($result)) {
        return $result;
    } 
    else {
        $result = false;
    }
    mysqli_stmt_close($stmt);
}