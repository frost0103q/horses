select `horses`.`horses`.`race_id` AS `race_id`,`horses`.`data`.`sectional` AS `sectional`,`horses`.`data`.`weight` AS `weight`,`horses`.`horses`.`horse_weight` AS `horse_weight`,`horses`.`horses`.`horse_name` AS `horse_name`,`horses`.`horses`.`horse_fixed_odds` AS `horse_fixed_odds`,`horses`.`data`.`distance` AS `distance`,`horses`.`data`.`pos` AS `pos`,`horses`.`data`.`time` AS `time`,`horses`.`data`.`handicap` AS `handicap`,max(SUBSTRING_INDEX(`sectional`,'=',-1)) AS `maxsectional` from (`horses`.`horses` left join `horses`.`data` on((`horses`.`horses`.`horse_name` = `horses`.`data`.`name`))) where (`horses`.`horses`.`horse_fixed_odds` <> '') group by `horses`.`horses`.`horse_name`,`horses`.`data`.`distance`