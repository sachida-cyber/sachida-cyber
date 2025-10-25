-- DNS Data Exfiltration Detection Query
-- Flags high-frequency or high-entropy DNS requests which may indicate tunneling.
-- MITRE ATT&CK: T1048 – Exfiltration Over Alternative Protocol

SELECT 
  "SourceIP",
  "Query",
  LENGTH("Query") AS query_length,
  COUNT("Query") AS query_count,
  MAX("EndTime") AS last_seen
FROM events
WHERE "Protocol" = 'DNS'
  AND LENGTH("Query") > 120
  AND "StartTime" > CURRENT_TIMESTAMP - 15 MINUTES
GROUP BY "SourceIP", "Query"
HAVING COUNT("Query") > 100
ORDER BY query_count DESC
LIMIT 100;
