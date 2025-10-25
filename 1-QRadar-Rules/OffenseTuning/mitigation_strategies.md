# 🛡️ Mitigation Strategies for Detected Offenses
**Author:** Sachida Nand Sharma  
**Last Updated:** 25-Oct-2025  

This document lists step-by-step response and containment strategies for each detection rule in QRadar.

---

## 🧱 Brute Force Attack
**Detection Source:** Failed login bursts from single IP.  
**Immediate Actions:**
1. Block offending IP at firewall or EDR console.  
2. Force password reset for affected accounts.  
3. Review account lockout logs for potential privilege escalation.  
**Post-Event:**  
- Enable MFA for remote access users.  
- Monitor for reattempts from new IP ranges.

---

## 📧 Phishing Attempt
**Detection Source:** Email gateway / SIEM correlation rule.  
**Immediate Actions:**
1. Quarantine affected emails and notify recipients.  
2. Extract sender domain and analyze in VirusTotal.  
3. Create rule to auto-quarantine similar future messages.  
**Post-Event:**  
- Conduct phishing awareness training.  
- Add sender to internal blocklist.  

---

## 🌐 DNS Exfiltration Attempt
**Detection Source:** Abnormal DNS traffic patterns.  
**Immediate Actions:**
1. Block suspicious domain at DNS resolver/firewall.  
2. Isolate endpoint making repeated long DNS queries.  
3. Review process responsible for outbound traffic (use Sysmon/EDR).  
**Post-Event:**  
- Add detection rule to monitor DNS query entropy.  
- Audit system for potential data theft indicators.

---

## 🔐 Ransomware Activity
**Detection Source:** File encryption spikes and SMB lateral movement.  
**Immediate Actions:**
1. Isolate infected host from the network immediately.  
2. Disable admin accounts used by ransomware processes.  
3. Stop malicious processes (`vssadmin.exe`, `cipher.exe`, etc.).  
4. Alert Incident Response team for triage and containment.  
**Post-Event:**  
- Restore from verified backups.  
- Apply endpoint patching and segmentation policies.  
- Review initial infection vector for compromise evidence.  

---

✅ **End Goal:**  
Ensure rapid, automated, and standardized containment actions to minimize incident impact and prevent recurrence.
