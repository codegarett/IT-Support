# 💼 IT Support Toolkit & Knowledge Base

A collection of PowerShell scripts and support documentation designed to assist IT Support Technicians with common tasks and troubleshooting.

---

## 🔧 Scripts

| Script Name                | Description                                                                 |
| -------------------------- | --------------------------------------------------------------------------- |
| `cleanup-temp.ps1`         | Clears user temp files and attempts to empty the Recycle Bin.               |
| `install-common-apps.ps1`  | Installs commonly used apps using `winget` (e.g., Chrome, VS Code, Git).    |
| `network-diagnostics.ps1`  | Runs IP configuration check and pings external DNS to verify connectivity.  |
| `get-system-info.ps1`      | Generates a detailed system info report and opens it in Notepad.            |
| `user-profile-cleanup.ps1` | Cleans temp folders and Chrome cache across all user profiles.              |
| `app-uninstaller.ps1`      | Prompts user for an app name and attempts uninstall via `winget`.           |
| `event-log-scanner.ps1`    | Displays the 10 most recent system and application error logs.              |
| `ad-user-report.ps1`       | Queries Active Directory and outputs a report of users with key attributes. |
| `new-secure-password.ps1`  | Generates a strong random password using PowerShell's cryptographic tools.  |


---

## 📚 Knowledge Base

Step-by-step troubleshooting guides for common support issues:

- **How to reset a Windows password**
- **Fixing no internet on Wi-Fi**
  - Release/renew IP
  - Restart adapter
  - Update drivers
  - Reboot router
  - Check for local ISP outages
- **Printer offline troubleshooting**
  - Restart print spooler
  - Reconnect via IP
  - Reinstall drivers
- **How to uninstall a stubborn app**
- **How to clear Chrome cache for all users**
- **How to generate and log system specs for support tickets**

---

## 📸 Screenshots (Example Usage)

### System Info Script Output
<img width="1154" height="528" alt="Get-system info script Screenshot" src="https://github.com/user-attachments/assets/c2fa1f42-bed7-443b-ae41-74187f59f590" />
<img width="478" height="658" alt="User profile Script Results in Notepad Screenshot" src="https://github.com/user-attachments/assets/727d4c25-f667-4dd9-a908-fcb53bd0b87d" />
 Network Diagnostics
<img width="553" height="557" alt="Network Diagnostic Script Screenshot" src="https://github.com/user-attachments/assets/dc81e257-0a2e-4341-b342-590c527d0fa8" />

### Cleanup Temporary Files
<img width="790" height="264" alt="Cleaup-temp Script " src="https://github.com/user-attachments/assets/d1e927b4-aae0-448a-bfce-5c4811f423f5" />

### Install Apps using Winget
<img width="806" height="401" alt="App-installer Script Screenshot" src="https://github.com/user-attachments/assets/e8ec5313-0fd8-443f-82f0-7ac09f55b82a" />

### App-Uninstaller Script
<img width="1084" height="332" alt="App-Uninstaller Script Screenshot" src="https://github.com/user-attachments/assets/bf727ed3-3496-4edc-966c-5ffb96068c2e" />

### User Profile Cleanup Script
<img width="946" height="390" alt="User profile Cleanup Script Screenshot" src="https://github.com/user-attachments/assets/eb8e1afb-2482-4be2-8ca7-8cbea285c74c" />

### Event Log Scanner Script
<img width="851" height="842" alt="Event Log Scanner Script Screenshot" src="https://github.com/user-attachments/assets/5abd893a-038c-4f34-ac22-9aaec77f4270" />

---

## 👨‍💻 Author
**Cody Garrett**  \  
Aspiring IT Support Technician  \  
[LinkedIn Profile](https://www.linkedin.com/in/codyegarrett90) 

---

## 📜 License
This project is licensed under the [MIT License](LICENSE).
