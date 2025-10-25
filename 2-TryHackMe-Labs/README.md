# TryHackMe – SOC Level 1 & Cyber Security 101 Labs

## Overview
This folder documents my hands-on training on TryHackMe with two primary focuses:
1. **Cyber Security 101 Path** — foundational concepts and a full introductory pathway (Completed).  
2. **SOC Level 1 Path** — practical SOC skills including network traffic analysis, intrusion detection, and incident triage (Ongoing).

Together these paths provide a balanced foundation across offensive and defensive domains, network forensics, and SOC operational tasks.

**Progress:**  
- Cyber Security 101 — 100% (Completed)  
- SOC Level 1 — 36% (In progress)

---

## Visual Certificates & Badges
Place your certificate and badge images in the `assets/` folder and update the file names if needed. Example placeholders:

../assets/img1.jpg # Cyber Security 101 certificate (use actual file name)
../assets/img2.jpg # SOC Level 1 progress / badge image
../assets/img3.jpg # Any additional certification (TryHackMe, e.g., Pre-Security)


Display example:
```html
<img src="../assets/img1.jpg" width="400" alt="Cyber Security 101 Certificate"/>
<img src="../assets/img2.jpg" width="400" alt="SOC Level 1 Progress Badge"/>

Cyber Security 101 Path (Completed)

Description: Beginner-friendly pathway introducing essential domains of computer security. Ideal for building the foundational skills required for a career in cybersecurity.

Path Objectives:

Understand core computer networking and cryptography concepts.

Gain familiarity with Windows, Active Directory, and Linux basics.

Learn offensive security tooling and basic exploitation concepts.

Explore defensive security solutions, SOC fundamentals, and incident response workflows.

Identify cybersecurity career options and required skills.

Modules / Topics Covered:

Start Your Cyber Security Journey

Linux Fundamentals

Windows and Active Directory Fundamentals

Command Line (Bash & PowerShell)

Networking (OSI model, TCP/IP)

Cryptography (hashing, symmetric/asymmetric)

Exploitation Basics (intro to vulnerabilities & Metasploit)

Web Hacking (OWASP Top 10, Burp Suite)

Offensive Security Tooling (Hydra, Gobuster, SQLMap)

Defensive Security (SOC basics, digital forensics)

Security Solutions (Firewalls, IDS, SIEM)

Defensive Security Tooling (CyberChef, REMnux, FlareVM)

Build Your Cyber Security Career (career guidance and next steps)

Outcome: Path completed with certificate. Demonstrates readiness for roles such as Security Analyst and Penetration Tester.

SOC Level 1 Path (In Progress)

Description: Practical SOC-oriented path focused on monitoring, detection, triage, and initial incident response. Emphasis on network analysis and detection tooling.

Current Progress: 36%

Key Labs and Modules (examples included in this folder):

Traffic Analysis Essentials — foundations of network traffic inspection and anomaly detection.

Snort — learn Snort for real-time detection and recorded traffic analysis.

Snort Challenge – The Basics — hands-on rule-writing for live capture analysis.

Snort Challenge – Live Attacks — defending against simulated live attacks.

NetworkMiner — passive network forensics and evidence extraction.

Zeek (Bro) — behavioral network monitoring and detection with Zeek.

Zeek Exercises — practical exercises analyzing network traffic with Zeek.

Brim — PCAP and log investigation for threat hunting.

Wireshark: The Basics — protocol analysis and interpreting PCAPs.

Wireshark: Packet Operations — advanced packet inspection methods.

Wireshark: Traffic Analysis — finding anomalies in network traffic.

TShark: The Basics — CLI-based packet inspection and automation.

TShark: CLI Wireshark Features — advanced command-line packet analysis.

TShark Challenge I & II — collaborative and directory-based TShark exercises.

Skills Demonstrated

Network packet inspection and PCAP analysis (Wireshark, TShark, Brim)

Intrusion detection and signature creation (Snort)

Behavioral monitoring and parsing (Zeek)

Network forensics and evidence extraction (NetworkMiner)

Log correlation and SOC triage workflows

Basic detection engineering and rule tuning

Practical use of TryHackMe environment for lab validation

Tools & Technologies

Wireshark / TShark (packet capture and analysis)

Snort (IDS and signature development)

Zeek (network monitoring & scripting)

NetworkMiner (passive network forensics)

Brim (PCAP/log exploration)

Metasploit, Nmap, Netcat (supporting offensive tooling)

TryHackMe lab environment

Artifacts Included (What to expect in this folder)

pcaps/ — PCAP files from lab exercises (sanitized)

snort-rules/ — custom Snort rules used in challenges

zeek-scripts/ — Zeek scripts or example logs produced by Zeek

wireshark/ — example capture filters and export screenshots (filtered and sanitized)

notes/ — per-room notes, commands used, and key findings (one README.md per room recommended)

screenshots/ — evidence of detections and results (non-sensitive)

Note: Always sanitize captures and logs before adding them to a public repository. Remove real IPs, hostnames, credentials, and any PII.

How to Use / Reproduce

Clone this folder or repository locally:

git clone https://github.com/<yourusername>/sachida-cyber.git
cd sachida-cyber/2-TryHackMe-Labs


Review the notes/ directory for per-room summaries and commands.

Open PCAPs with Wireshark or Brim:

wireshark pcaps/sample.pcap


Load Snort rules in a lab VM or use snort -r sample.pcap -c snort.conf for offline testing.

Use Zeek to process captures:

zeek -r pcaps/sample.pcap local

Related Work & Next Steps

Link to 3-Log-Analysis/ for notebooks demonstrating log parsing and analytics.

Link to 1-QRadar-Rules/ for SIEM correlation rules where network detections feed into offense creation.

Continue SOC Level 1 path to complete remaining modules and add new artifacts.

Contact

LinkedIn: https://www.linkedin.com/in/YOUR-LINKEDIN

TryHackMe: https://tryhackme.com/p/YOUR-USERNAME

Email: YOUR-EMAIL@example.com
