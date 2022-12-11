<?php

    if(isset($_POST['submit'])) {
        $player_id = $_POST['player_id'];
        $team_id = $_POST['team_id'];
        $game_number = $_POST['game_number'];
        $points = $_POST['points'];
        $rebounds = $_POST['rebounds'];
        $assists = $_POST['assists'];
        $steals = $_POST['steals'];
        $blocks = $_POST['blocks'];
        // $fouls = $_POST['fouls'];

        require_once 'dbh.inc.php';
        require_once 'functions.inc.php';

        // STATS TYPE 'PTS','REBS','ASTS','STLS','BLKS','FLS'
        insertStats($connection, $player_id, $team_id, $game_number, "PTS", $points);
        insertStats($connection, $player_id, $team_id, $game_number, "REBS", $rebounds);
        insertStats($connection, $player_id, $team_id, $game_number, "ASTS", $assists);
        insertStats($connection, $player_id, $team_id, $game_number, "STLS", $steals);
        insertStats($connection, $player_id, $team_id, $game_number, "BLKS", $blocks);
        // insertStats($connection, $player_id, $team_id, $game_number, "FLS", $fouls);

        header("location: ../add-stats.html?error=none");
        exit();
    }