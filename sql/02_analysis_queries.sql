SELECT *
FROM sleep_day
LIMIT 5;

SELECT COUNT(*) AS total_rows
FROM sleep_day;

SELECT
    Id,
    ActivityDate,
    COUNT(*) AS duplicate_count
FROM sleep_day
GROUP BY Id, ActivityDate
HAVING COUNT(*) > 1;

ALTER TABLE sleep_day
ADD COLUMN sleep_date DATE;

UPDATE sleep_day
SET sleep_date = STR_TO_DATE(SleepDay, '%m/%d/%Y %r');

SELECT SleepDay, sleep_date
FROM sleep_day
LIMIT 5;

SELECT COUNT(*) AS total_rows
FROM sleep_day;

SELECT
    Id,
    SleepDay,
    COUNT(*) AS duplicate_count
FROM sleep_day
GROUP BY Id, SleepDay
HAVING COUNT(*) > 1;

SELECT
    SUM(Id IS NULL) AS missing_id,
    SUM(SleepDay IS NULL) AS missing_sleepday,
    SUM(TotalMinutesAsleep IS NULL) AS missing_minutes_asleep,
    SUM(TotalTimeInBed IS NULL) AS missing_time_in_bed
FROM sleep_day;

SELECT
    MIN(TotalMinutesAsleep) AS min_sleep,
    MAX(TotalMinutesAsleep) AS max_sleep,
    AVG(TotalMinutesAsleep) AS avg_sleep,
    MIN(TotalTimeInBed) AS min_bed,
    MAX(TotalTimeInBed) AS max_bed,
    AVG(TotalTimeInBed) AS avg_bed
FROM sleep_day;