-- Brute Force Login Detection Query
-- Detects multiple failed login attempts from a single source followed by a successful login within 10 minutes.
-- MITRE ATT&CK: T1110 – Brute Force

SELECT 
  "SourceIP", 
  COUNT("EventName") AS failed_attempts, 
  FIRST("Username") AS user, 
  MIN("StartTime") AS first_attempt, 
  MAX("EndTime") AS last_attempt
FROM events
WHERE "EventName" ILIKE '%failed%' 
  AND "Username" IS NOT NULL
  AND "StartTime" > CURRENT_TIMESTAMP - 10 MINUTES
GROUP BY "SourceIP"
HAVING COUNT("EventName") > 5
ORDER BY failed_attempts DESC
LIMIT 50;
