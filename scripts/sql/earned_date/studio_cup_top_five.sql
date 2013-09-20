select min(t.track_end_date) AS earned_date
from track_contest_results tcr
 , track_contest tc
 , track t
where tcr.track_contest_id = tc.track_contest_id
    and t.track_type_id = 3
    and tc.track_contest_type_id = 1
    and tcr.track_contest_prize > 0
    and tc.track_id = t.track_id
    and t.track_status_id != 3
    AND t.track_end_date <= CURRENT
    AND tcr.user_id = @userId