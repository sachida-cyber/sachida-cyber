-- Ransomware Behavior Detection Query
-- Detects rapid file renaming and execution of known ransomware-related processes.
-- MITRE ATT&CK: T1486 – Data Encrypted for Impact

SELECT 
  "Hostname",
  COUNT("FileName") AS rename_count,
  SUM(CASE WHEN "ProcessName" IN ('vssadmin.exe', 'cipher.exe', 'wmic.exe') THEN 1 ELSE 0 END) AS suspicious_process_count,
  COUNT(DISTINCT "DestinationIP") AS smb_connections,
  MAX("EndTime") AS last_activity
FROM events
WHERE ("FileName" LIKE '%.locked%' OR 
       "FileName" LIKE '%.encrypted%' OR 
       "FileName" LIKE '%.cry%')
  AND "StartTime" > CURRENT_TIMESTAMP - 10 MINUTES
GROUP BY "Hostname"
HAVING COUNT("FileName") > 50
   OR SUM(CASE WHEN "ProcessName" IN ('vssadmin.exe', 'cipher.exe', 'wmic.exe') THEN 1 ELSE 0 END) > 3
   OR COUNT(DISTINCT "DestinationIP") > 10
ORDER BY rename_count DESC
LIMIT 100;
