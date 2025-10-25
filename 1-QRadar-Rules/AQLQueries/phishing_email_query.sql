-- Phishing Email Attempt Query
-- Identifies emails containing phishing indicators such as suspicious domains or keywords.
-- MITRE ATT&CK: T1566 – Phishing

SELECT 
  "SenderAddress",
  "RecipientAddress",
  "Subject",
  "AttachmentName",
  "Domain",
  "ReputationScore"
FROM events
WHERE ("Subject" ILIKE '%invoice%' OR 
       "Subject" ILIKE '%password%' OR 
       "Subject" ILIKE '%urgent%')
  AND ("AttachmentType" IN ('exe', 'js', 'vbs', 'zip'))
  AND ("ReputationScore" < 40)
ORDER BY "StartTime" DESC
LIMIT 100;
