SELECT *
FROM weight_log
LIMIT 5;


SELECT COUNT(*) AS total_rows
FROM weight_log;

ALTER TABLE weight_log
ADD COLUMN weight_date DATE;

UPDATE weight_log
SET weight_date = STR_TO_DATE(Date, '%m/%d/%Y %r');

SET SQL_SAFE_UPDATES = 0;

SELECT Date, weight_date
FROM weight_log
LIMIT 5;
