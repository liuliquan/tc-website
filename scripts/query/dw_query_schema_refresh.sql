INSERT INTO data_type_lu VALUES(1001, "Integer Input");
INSERT INTO data_type_lu VALUES(1002, "Decimal Input");
INSERT INTO data_type_lu VALUES(1003, "Date Input");
INSERT INTO data_type_lu VALUES(1004, "Sort Direction");
INSERT INTO data_type_lu VALUES(1005, "String Input");

INSERT INTO command VALUES(1,"round_stats",6);
INSERT INTO command VALUES(2,"room_stats",6);
INSERT INTO command VALUES(3,"round_stats_sorted",6);
INSERT INTO command VALUES(4,"problem_statement",6);
INSERT INTO command VALUES(5,"problem_solution",6);
INSERT INTO command VALUES(6,"member_profile",6);
INSERT INTO command VALUES(7,"winning_debuts",6);
INSERT INTO command VALUES(8,"all_time_wins",6);
INSERT INTO command VALUES(9,"highest_totals",6);
INSERT INTO command VALUES(10,"biggest_rating_gains",6);
INSERT INTO command VALUES(11,"highest_accuracy",6);
INSERT INTO command VALUES(12,"impressive_debuts",6);
INSERT INTO command VALUES(13,"most_consecutive_wins",6);
INSERT INTO command VALUES(14,"best_challengers",6);
INSERT INTO command VALUES(15,"earnings_history",6);
INSERT INTO command VALUES(16,"ratings_history",6);
INSERT INTO command VALUES(17,"coder_room_stats",6);
INSERT INTO command VALUES(18,"coder_ratings",6);
INSERT INTO command VALUES(19,"all_time_wins_by_div",6);
INSERT INTO command VALUES(20,"last_match",6);
INSERT INTO command VALUES(21,"last_match_sorted",6);
INSERT INTO command VALUES(22,"top_room_winners",6);
INSERT INTO command VALUES(23,"top_ranked_div_1",6);
INSERT INTO command VALUES(24,"top_ranked_div_2",6);
INSERT INTO command VALUES(25,"div_2_problem_level_stats",6);
INSERT INTO command VALUES(26,"rating_history_graph",2);
INSERT INTO command VALUES(27,"rating_distribution_graph",2);
INSERT INTO command VALUES(28,"submission_information",3);
INSERT INTO command VALUES(29,"rating_distribution_graph_dark",2);
INSERT INTO command VALUES(30,"round_overview",6);
INSERT INTO command VALUES(31,"problem_distribution_graph",2);
INSERT INTO command VALUES(32,"school_avg_rating",6);

INSERT INTO command_query_xref VALUES(1, 1, 1);
INSERT INTO command_query_xref VALUES(1, 2, 2);
INSERT INTO command_query_xref VALUES(1, 39, 3);
INSERT INTO command_query_xref VALUES(1, 45, 4);
INSERT INTO command_query_xref VALUES(2, 2, 1);
INSERT INTO command_query_xref VALUES(2, 3, 2);
INSERT INTO command_query_xref VALUES(2, 4, 3);
INSERT INTO command_query_xref VALUES(3, 35, 1);
INSERT INTO command_query_xref VALUES(3, 2, 2);
INSERT INTO command_query_xref VALUES(3, 45, 3);
INSERT INTO command_query_xref VALUES(4, 12, 1);
INSERT INTO command_query_xref VALUES(5, 33, 1);
INSERT INTO command_query_xref VALUES(5, 6, 2);
INSERT INTO command_query_xref VALUES(5, 9, 3);
INSERT INTO command_query_xref VALUES(5, 10, 4);
INSERT INTO command_query_xref VALUES(5, 11, 5);
INSERT INTO command_query_xref VALUES(5, 13, 6);
INSERT INTO command_query_xref VALUES(6, 14, 1);
INSERT INTO command_query_xref VALUES(6, 15, 2);
INSERT INTO command_query_xref VALUES(6, 31, 3);
INSERT INTO command_query_xref VALUES(6, 41, 4);
INSERT INTO command_query_xref VALUES(7, 16, 1);
INSERT INTO command_query_xref VALUES(8, 17, 1);
INSERT INTO command_query_xref VALUES(9, 18, 1);
INSERT INTO command_query_xref VALUES(10, 19, 1);
INSERT INTO command_query_xref VALUES(11, 20, 1);
INSERT INTO command_query_xref VALUES(12, 21, 1);
INSERT INTO command_query_xref VALUES(13, 22, 1);
INSERT INTO command_query_xref VALUES(14, 23, 1);
INSERT INTO command_query_xref VALUES(15, 24, 1);
INSERT INTO command_query_xref VALUES(15, 30, 2);
INSERT INTO command_query_xref VALUES(16, 25, 1);
INSERT INTO command_query_xref VALUES(16, 30, 2);
INSERT INTO command_query_xref VALUES(17, 2, 1);
INSERT INTO command_query_xref VALUES(17, 28, 2);
INSERT INTO command_query_xref VALUES(17, 29, 3);
INSERT INTO command_query_xref VALUES(17, 44, 4);
INSERT INTO command_query_xref VALUES(17, 7, 5);
INSERT INTO command_query_xref VALUES(17, 8, 6);
INSERT INTO command_query_xref VALUES(18, 5, 1);
INSERT INTO command_query_xref VALUES(19, 32, 1);
INSERT INTO command_query_xref VALUES(20, 36, 1);
INSERT INTO command_query_xref VALUES(20, 26, 2);
INSERT INTO command_query_xref VALUES(20, 40, 3);
INSERT INTO command_query_xref VALUES(20, 45, 4);
INSERT INTO command_query_xref VALUES(21, 37, 1);
INSERT INTO command_query_xref VALUES(21, 26, 2);
INSERT INTO command_query_xref VALUES(21, 45, 3);
INSERT INTO command_query_xref VALUES(22, 46, 1);
INSERT INTO command_query_xref VALUES(23, 47, 1);
INSERT INTO command_query_xref VALUES(24, 48, 1);
INSERT INTO command_query_xref VALUES(25, 49, 1);
INSERT INTO command_query_xref VALUES(26, 50, 1);
INSERT INTO command_query_xref VALUES(27, 51, 1);
INSERT INTO command_query_xref VALUES(28, 52, 1);
INSERT INTO command_query_xref VALUES(29, 51, 1);
INSERT INTO command_query_xref VALUES(30, 53, 1);
INSERT INTO command_query_xref VALUES(30, 54, 2);
INSERT INTO command_query_xref VALUES(31, 55, 1);
INSERT INTO command_query_xref VALUES(31, 56, 2);
INSERT INTO command_query_xref (command_id, query_id, sort_order) VALUES(32,57,1);

INSERT INTO input_lu VALUES(1, "rd", 1001, "Round ID");
INSERT INTO input_lu VALUES(2, "rm", 1001, "Room ID");
INSERT INTO input_lu VALUES(3, "cr", 1001, "Coder ID");
INSERT INTO input_lu VALUES(4, "pm", 1001, "Problem ID");
INSERT INTO input_lu VALUES(5, "sd", 1003, "Start date");
INSERT INTO input_lu VALUES(6, "ed", 1003, "End date");
INSERT INTO input_lu VALUES(7, "nr", 1001, "Number of records");
INSERT INTO input_lu VALUES(8, "sr", 1001, "Start rank");
INSERT INTO input_lu VALUES(9, "er", 1001, "End rank");
INSERT INTO input_lu VALUES(10, "ct", 1001, "Contest ID");
INSERT INTO input_lu VALUES(11, "dn", 1001, "Division ID");
INSERT INTO input_lu VALUES(12, "br", 1001, "Base room ID");
INSERT INTO input_lu VALUES(13, "sm", 1001, "Start room");
INSERT INTO input_lu VALUES(14, "em", 1001, "End room");
INSERT INTO input_lu VALUES(15, "sc", 1001, "Sort column");
INSERT INTO input_lu VALUES(16, "sd", 1004, "Sort direction");
INSERT INTO input_lu VALUES(17, "cu", 1001, "Current User ID");
INSERT INTO input_lu VALUES(18, "ra", 1001, "Rating");
INSERT INTO input_lu VALUES(19, "pss", 1005, "Problem Status");
INSERT INTO input_lu VALUES(20, "nrn", 1001, "Min Num Ratings");

INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (1, "Y", "$26", 1, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (1, "Y", "1", 11, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (1, "Y", "$34", 12, 3);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (1, "Y", "1", 13, 4);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (1, "Y", "20", 14, 5);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (3, "Y", "$26", 1, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (4, "Y", "$26", 1, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (4, "Y", "$27", 2, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (5, "Y", "1", 8, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (5, "Y", "50", 9, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (6, "N", null, 1, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (6, "N", null, 3, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (7, "N", null, 3, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (7, "Y", "$42", 1, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (8, "N", null, 3, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (8, "Y", "$42", 1, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (9, "N", null, 3, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (9, "N", null, 1, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (9, "N", null, 4, 3);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (10, "N", null, 3, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (10, "N", null, 1, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (10, "N", null, 4, 3);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (11, "N", null, 3, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (11, "N", null, 1, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (11, "N", null, 4, 3);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (12, "N", null, 4, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (12, "N", null, 1, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (13, "N", null, 1, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (13, "N", null, 3, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (13, "N", null, 4, 3);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (14, "N", null, 3, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (14, "Y", "0", 17, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (15, "N", null, 3, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (16, "Y", "10", 7, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (17, "Y", "1", 8, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (17, "Y", "10", 9, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (18, "Y", "1", 8, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (18, "Y", "10", 9, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (18, "Y", "1", 11, 3);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (19, "Y", "1", 8, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (19, "Y", "10", 9, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (19, "Y", "1", 11, 3);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (20, "Y", "1", 8, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (20, "Y", "25", 9, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (21, "Y", "1", 8, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (21, "Y", "25", 9, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (22, "Y", "1", 8, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (22, "Y", "10", 9, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (22, "Y", "1", 11, 3);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (23, "Y", "1", 8, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (23, "Y", "25", 9, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (24, "N", null, 3, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (24, "Y", "1", 8, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (24, "Y", "50", 9, 3);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (24, "Y", "3", 15, 4);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (24, "Y", "ASC", 16, 5);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (25, "N", null, 3, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (25, "Y", "1", 8, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (25, "Y", "50", 9, 3);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (25, "Y", "3", 15, 4);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (25, "Y", "ASC", 16, 5);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (28, "Y", "$42", 1, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (29, "Y", "$42", 1, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (29, "Y", "$43", 2, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (30, "N", null, 3, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (31, "N", null, 3, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (32, "Y", "1", 11, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (32, "Y", "1", 8, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (32, "Y", "10", 9, 3);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (33, "N", null, 1, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (33, "N", null, 2, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (33, "N", null, 3, 3);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (35, "N", null, 1, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (35, "Y", "1", 11, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (35, "N", null, 15, 3);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (35, "Y", "ASC", 16, 4);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (35, "Y", "1", 8, 5);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (35, "Y", "50", 9, 6);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (36, "Y", "1", 11, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (36, "Y", "$38", 12, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (36, "Y", "1", 13, 3);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (36, "Y", "20", 14, 4);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (37, "Y", "1", 11, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (37, "N", null, 15, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (37, "Y", "ASC", 16, 3);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (37, "Y", "1", 8, 4);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (37, "Y", "50", 9, 5);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (39, "Y", "$26", 1, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (39, "N", null, 11, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (40, "N", null, 11, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (41, "Y", -666, 17, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (44, "N", null, 3, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (44, "Y", "$42", 1, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (45, "Y", "$26", 1, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (46, "N", null, 11, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (46, "Y", 1, 8, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (46, "Y", 10, 9, 3);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (47, "Y", 1, 8, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (47, "Y", 10, 9, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (48, "Y", 1, 8, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (48, "Y", 10, 9, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (49, "Y", "$26", 1, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (50, "N", null, 3, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (51, "Y", 0, 18, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (52, "Y", "140,160", 19, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (52, "Y", "$26", 1, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (53, "Y", "$26", 1, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (54, "Y", "$26", 1, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (55, "N", null, 4, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (55, "Y", 1, 11, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (56, "N", null, 4, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (56, "Y", 1, 11, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (57, "Y", 10, 20, 1);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (57, "Y", 1, 8, 2);
INSERT INTO query_input_xref (query_id, optional, default_value, input_id, sort_order) VALUES (57, "Y", 50, 9, 3);
