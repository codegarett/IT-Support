# 🌐 Network Diagnostics SOP (Internet or DNS Issues)

This Standard Operating Procedure (SOP) outlines a consistent, step-by-step process for remotely diagnosing and resolving **network connectivity issues**, particularly in environments reliant on Point-of-Sale (POS) systems and cloud-based services.

---

## 🎯 Scope

This SOP is applicable for:

- Restaurant or retail POS terminals with internet or cloud service issues
- Devices reporting **slow or no connection**, **DNS failures**, or **gateway timeouts**
- Remote troubleshooting via Splashtop, AnyDesk, or ConnectWise

It combines **automated PowerShell diagnostics** with manual recovery techniques to speed up resolution and standardize remote IT support.

---

## 🛠️ Required Tools

- Remote access session (Splashtop, AnyDesk, etc.)
- PowerShell terminal access
- Toolkit Scripts:
  - `network-diagnostics.ps1`

---

## 🚦 Troubleshooting Workflow

### 1. 🚀 Run Diagnostic Script

Run: `network-diagnostics.ps1`

Purpose:
- Gather IP, DNS, and gateway details
- Ping gateway, DNS, and external sites
- Detect media disconnection or DHCP lease issues

📝 Log output in support ticket or save as `.txt` locally for upload.

---

### 2. 🔍 Review Key Output

Check for:
- Missing or self-assigned IP (`169.x.x.x`)
- Unreachable default gateway
- DNS lookup failures
- Packet loss or high latency to external hosts (e.g., `8.8.8.8`, `google.com`)

---

### 3. 🔄 Apply Manual Fixes

Use these PowerShell commands as fallback remediation:

#### a. Flush DNS Cache
```powershell
ipconfig /flushdns
b. Release & Renew IP Address (DHCP)
powershell
Copy
Edit
ipconfig /release
ipconfig /renew
c. Reset Winsock & TCP/IP Stack
powershell
Copy
Edit
netsh winsock reset
netsh int ip reset
📌 Note: This may require a reboot to take full effect.

4. 🔌 Reboot Network Adapter (if needed)
Use these commands to disable/enable the adapter without full system restart:

powershell
Copy
Edit
Get-NetAdapter | Where-Object {$_.Status -eq "Up"} | Disable-NetAdapter -Confirm:$false
Start-Sleep -Seconds 5
Get-NetAdapter | Where-Object {$_.Status -eq "Disabled"} | Enable-NetAdapter
Ensure you’re still connected remotely before running this!

5. 📡 Re-Test Connectivity
Use built-in tools or script again:

powershell
Copy
Edit
Test-Connection 8.8.8.8 -Count 4
Resolve-DnsName google.com
Confirm:

Internet access is restored

POS system or browser loads normally

Cloud services (ordering, inventory, etc.) are responsive

🧾 Documentation Tips
Before closing the ticket:

Record script output (key errors or failures)

Note any commands used manually

Confirm resolution with on-site staff

Capture IP/DNS settings and whether a reboot occurred

📌 Common Root Causes
Symptom	Possible Cause
No IP / 169.x.x.x	DHCP failure
Can ping IPs, not domains	DNS resolution issue
No gateway response	Misconfigured gateway or switch
Intermittent web access	ISP latency or packet loss

✅ Best Practices
Run this SOP during initial troubleshooting, not after escalation

Keep network-diagnostics.ps1 updated with new checks

Snapshot common failures across sites for root-cause trending

Reboot POS only if necessary and with on-site approval
