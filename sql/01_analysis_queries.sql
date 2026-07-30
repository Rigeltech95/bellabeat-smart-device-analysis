SELECT *
FROM daily_activity
LIMIT 10;

SELECT COUNT(*)
FROM daily_activity;

SELECT
    Id,
    ActivityDate,
    COUNT(*) AS duplicate_count
FROM daily_activity
GROUP BY Id, ActivityDate
HAVING COUNT(*) > 1;

SELECT
    SUM(Id IS NULL) AS missing_id,
    SUM(ActivityDate IS NULL) AS missing_date,
    SUM(TotalSteps IS NULL) AS missing_steps,
    SUM(Calories IS NULL) AS missing_calories
FROM daily_activity;

SELECT ActivityDate
FROM daily_activity
LIMIT 10;

SELECT
    MIN(TotalSteps) AS min_steps,
    MAX(TotalSteps) AS max_steps,
    AVG(TotalSteps) AS avg_steps,
    MIN(Calories) AS min_calories,
    MAX(Calories) AS max_calories,
    AVG(Calories) AS avg_calories
FROM daily_activity;

ALTER TABLE daily_activity
ADD COLUMN activity_date DATE;

UPDATE daily_activity
SET activity_date = STR_TO_DATE(ActivityDate, '%m/%d/%Y');

SELECT ActivityDate, activity_date
FROM daily_activity
LIMIT 10;

SELECT ActivityDate, activity_date
FROM daily_activity
LIMIT 10;

UPDATE daily_activity
SET activity_date = STR_TO_DATE(ActivityDate, '%m/%d/%Y');

SET SQL_SAFE_UPDATES = 0;

UPDATE daily_activity
SET activity_date = STR_TO_DATE(ActivityDate, '%m/%d/%Y');

SELECT ActivityDate, activity_date
FROM daily_activity
LIMIT 10;

SELECT ActivityDate, activity_date
FROM daily_activity
LIMIT 5;
