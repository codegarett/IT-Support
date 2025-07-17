# 🗂 IT Support Toolkit Documentation

This folder contains support documentation and Standard Operating Procedures (SOPs) designed to accompany the PowerShell scripts in the IT Support Toolkit. These SOPs help IT technicians, especially those in restaurant and retail environments, perform common troubleshooting and support workflows with clarity and consistency.

Each SOP reflects real-world scenarios and outlines practical steps using the toolkit's scripts for fast and effective remote support.

---

## 📄 Available SOPs

### 🔧 [Remote POS Troubleshooting SOP](sop-pos-troubleshooting.md)
**Scenario:** A restaurant register or terminal is slow, unresponsive, or freezing.  
**Purpose:** Guide techs through diagnosing and resolving performance issues using PowerShell scripts.  
**Covers:** System info collection, temp/profile cleanup, log scanning, and safe reboots.

---

### 🌐 [Network Diagnostics SOP](sop-network-diagnostics.md)
**Scenario:** A user reports no internet or DNS resolution issues (e.g., sites won’t load).  
**Purpose:** Help support staff identify whether the issue is local (IP, adapter, DNS) or external.  
**Covers:** IP checks, DNS testing, ping diagnostics, stack resets, and adapter reboots.

---

### 🪵 [Event Log Triage SOP](sop-event-log-triage.md)
**Scenario:** A system is crashing unexpectedly or behaving erratically.  
**Purpose:** Help technicians quickly analyze recent Application and System errors to identify root causes.  
**Covers:** Use of `event-log-scanner.ps1` script to extract logs, identify common Event IDs (e.g., 1000, 41), and document findings for escalation or resolution.

---

## 📌 How to Use These SOPs

- Use these guides as reference during live remote support sessions.  
- Run the corresponding PowerShell scripts from the [main repository](../).  
- Document resolutions and update internal tickets accordingly.

For any questions or to contribute new SOPs, please open a pull request or issue in the main repo.
