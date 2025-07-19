# 📋 Event Log Scanner SOP – Rapid Error & Issue Identification

This Standard Operating Procedure (SOP) outlines how to use the `event-log-scanner.ps1` script to quickly identify recent **errors and warnings** from the Windows Event Logs. This process supports IT technicians during **remote troubleshooting sessions**, particularly when investigating:

- System crashes or freezes  
- Unresponsive applications  
- Blue Screens of Death (BSODs)  
- General system degradation with unclear cause

---

## 🔍 Key Use Cases

Use this SOP to:

- Diagnose unexplained slowdowns, crashes, or user complaints
- Validate and document user-reported issues
- Prepare incident reports or notes for Tier 2/3 escalation
- Maintain transparency in service tickets and technical audits

---

## 🛠️ Required Tools

- Remote access (Splashtop, AnyDesk, ConnectWise)
- PowerShell terminal access
- Toolkit Script:
  - `event-log-scanner.ps1`

---

## 🚦 Script Capabilities

`event-log-scanner.ps1` performs the following:

- Retrieves **Application** and **System** event logs
- Filters for entries marked **Error** or **Warning**
- Limits search to the **last 24 hours** *(can be customized in script)*
- Outputs:
  - Timestamp
  - Source (e.g., "Application Error", "Service Control Manager")
  - Event ID
  - Brief message/description
- Displays results in Notepad or optionally saves to `.txt`

---

## 🔄 Troubleshooting Workflow

### 1. 🚀 Run the Script

From an elevated PowerShell prompt on the target system:
```powershell
.\event-log-scanner.ps1
🔐 Ensure you're running with admin rights for full access to logs.

2. 🔎 Review Output
Look for high-impact entries such as:

Log Type	Common Errors	Example Sources
System	Unexpected shutdown, driver failure	Service Control Manager, BugCheck
Application	App crashes or .NET issues	Application Error, .NET Runtime

Focus on:

Repeating event IDs

Errors occurring at the same time as user complaints

System instability markers (e.g., Event ID 41, 1000, 6008)

3. 📂 Save Output for Documentation
The script automatically opens results in Notepad. You can:

Save the file to Desktop as event-log-summary.txt

Upload to support ticket or attach to escalation notes

Copy/paste key entries into ticket comments

4. ⬆️ Escalation (If Needed)
If errors are unfamiliar, hardware-related, or persistent:

Include event-log-summary.txt in the escalation package

Highlight:

Repeating Event IDs

Time of first occurrence

Affected application or system service

✅ Technician Benefits
Saves time: No manual Event Viewer digging

Consistent process: All techs follow the same triage method

Audit-ready: Supports compliance and transparency

Faster resolutions: Speeds up root cause discovery

📌 Best Practices
Run after every major system issue before rebooting

Store logs for repeat offenders (track trends across devices)

Customize time range and severity filter in the script as needed:

powershell
Copy
Edit
$TimeRangeHours = 24
$FilterLevels = @("Error", "Warning")
