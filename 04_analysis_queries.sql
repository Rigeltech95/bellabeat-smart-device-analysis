SELECT
    ROUND(AVG(TotalSteps), 0) AS average_daily_steps
FROM daily_activity;

SELECT
    ROUND(AVG(Calories), 0) AS average_calories
FROM daily_activity;

SELECT
    ROUND(AVG(SedentaryMinutes), 0) AS average_sedentary_minutes
FROM daily_activity;

SELECT
    DAYNAME(activity_date) AS day_of_week,
    ROUND(AVG(TotalSteps), 0) AS avg_steps
FROM daily_activity
GROUP BY day_of_week
ORDER BY FIELD(day_of_week,
'Monday','Tuesday','Wednesday','Thursday',
'Friday','Saturday','Sunday');

SELECT
    TotalSteps,
    Calories
FROM daily_activity;

SELECT
    ROUND(AVG(TotalMinutesAsleep), 0) AS avg_sleep_minutes,
    ROUND(AVG(TotalMinutesAsleep)/60, 2) AS avg_sleep_hours
FROM sleep_day;

SELECT
    d.Id,
    d.activity_date,
    d.TotalSteps,
    s.TotalMinutesAsleep
FROM daily_activity AS d
JOIN sleep_day AS s
    ON d.Id = s.Id
   AND d.activity_date = s.sleep_date;
   
   SELECT
    CASE
        WHEN TotalSteps < 5000 THEN 'Inactive'
        WHEN TotalSteps BETWEEN 5000 AND 7499 THEN 'Low Active'
        WHEN TotalSteps BETWEEN 7500 AND 9999 THEN 'Moderately Active'
        ELSE 'Highly Active'
    END AS activity_level,
    COUNT(*) AS number_of_days
FROM daily_activity
GROUP BY activity_level;