# 🧩 False Positive Tuning Notes
**Author:** Sachida Nand Sharma  
**Updated:** 25-Oct-2025  
**Purpose:** Document observed false positives in QRadar correlation rules and their fine-tuning strategies to improve detection accuracy.

---

## 1️⃣ Brute Force Detection Rule
**Issue:**  
High false positives from legitimate users entering wrong passwords (VPN or AD users).  

**Tuning Applied:**  
- Added condition: exclude internal subnet `10.0.0.0/8`, `172.16.0.0/12`  
- Increased failed attempt threshold from 5 → 7  
- Added whitelist for service accounts (`svc_*`, `backup_*`)  

**Result:** Reduced noise by ~45% while maintaining high detection accuracy.

---

## 2️⃣ Phishing Email Rule
**Issue:**  
Marketing emails triggering keyword matches (e.g., “invoice”, “urgent”).  

**Tuning Applied:**  
- Created a trusted sender list (marketing domains).  
- Applied domain reputation >50 as secondary condition.  
- Excluded Office 365 safe senders list.  

**Result:** False positives dropped by ~60%.  

---

## 3️⃣ DNS Exfiltration Rule
**Issue:**  
Legitimate security tools using frequent DNS lookups flagged as suspicious.  

**Tuning Applied:**  
- Whitelisted known update domains (`*.microsoft.com`, `*.ubuntu.com`).  
- Increased query frequency threshold (from 100 → 150 in 15 minutes).  
- Added entropy threshold to ignore readable domain patterns.  

**Result:** Significant accuracy improvement (reduced false positives by 35%).  

---

## 4️⃣ Ransomware Behavior Rule
**Issue:**  
Backup tools and compression jobs mimicking encryption behavior.  

**Tuning Applied:**  
- Ignored file operations from known safe processes (`7zip.exe`, `robocopy.exe`).  
- Added behavior correlation: encryption + SMB spread + admin privilege = real alert.  

**Result:** Near-zero false positives on normal backup jobs.

---

✅ **Outcome Summary**
- Total average false positive reduction: **~50% across all detection rules**  
- Enhanced SOC efficiency by focusing analysts on high-fidelity offenses.
