SELECT players.last_name, players.first_name, player_stats.stat_type, player_stats.count FROM players INNER JOIN player_stats ON player_stats.player_id = players.id;

SELECT player_id, team_id, stat_type, SUM(count) FROM player_stats WHERE player_id = 1 GROUP BY player_id, stat_type;