# 🧰 Remote POS Terminal Troubleshooting SOP

This Standard Operating Procedure (SOP) provides a structured, repeatable process for remotely diagnosing and resolving performance issues on **Windows-based Point-of-Sale (POS) terminals**, commonly used in restaurants and retail environments.

This SOP is designed to be used alongside the **PowerShell scripts in the IT Support Toolkit**, and is ideal for remote support sessions via **Splashtop**, **AnyDesk**, **ConnectWise**, or similar tools.

---

## 🔍 Purpose

To efficiently troubleshoot POS terminal issues such as:

- Freezing or lagging register screens
- Slow response during transactions or cash-outs
- Memory or resource-related performance degradation
- General unresponsiveness during peak hours

---

## 🛠️ Required Tools

- Remote access software (e.g., Splashtop, AnyDesk, ConnectWise)
- PowerShell-enabled access to the POS terminal
- Toolkit Scripts:
  - `get-system-info.ps1`
  - `cleanup-temp.ps1`
  - `user-profile-cleanup.ps1`
  - `event-log-scanner.ps1`

---

## 🔄 Troubleshooting Workflow

### 1. 🧠 Gather System Info

Run: `get-system-info.ps1`

Purpose:
- Identify CPU/RAM usage
- Check disk space and system uptime
- Collect OS version and update history

📝 **Note:** Log this info in the support ticket for documentation and trend analysis.

---

### 2. 🧹 Clean Temp Files & Cache

Run: `cleanup-temp.ps1`

Purpose:
- Remove system-wide temp files
- Clear browser cache if applicable
- Free up space and reduce background clutter

Optional: Run `user-profile-cleanup.ps1` for deep profile cleanup if slowness persists.

---

### 3. 🕵️ Scan Event Logs

Run: `event-log-scanner.ps1`

Purpose:
- Check for recent application or system errors (Event IDs 1000, 41, 6008)
- Identify POS software crashes or hardware faults
- Look for recurring warnings during peak hours

🛠 Tip: Search for `"POSApp.exe"` or vendor-specific logs in `Application` logs.

---

### 4. 🔁 Reboot Safely (if needed)

If performance doesn’t improve after steps 1–3:

- Notify store manager before reboot
- Use the command:
  ```powershell
  shutdown /r /t 60 /c "Remote support maintenance - rebooting to restore performance"
Confirm the system reboots and POS app relaunches correctly

5. 📋 Document Resolution
Before ending the session:

Confirm issue is resolved with on-site staff

Log the following in the support ticket:

Scripts run and findings

Errors detected (if any)

Actions taken (e.g., temp cleanup, reboot)

Timestamp and technician initials

✅ Why This Matters
POS terminals are critical to restaurant operations. Downtime results in:

Slowed service

Frustrated staff and customers

Lost revenue

This SOP enables fast, consistent support while minimizing disruptions across all store locations.

📌 Best Practices
Perform weekly proactive cleanups on underperforming terminals

Encourage stores to report slowness early (not mid-rush)

Keep all scripts updated and tested in your toolkit repo

Establish tagging in the ticketing system for recurring POS issues


