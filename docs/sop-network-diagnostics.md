[sop-network-diagnostics.md](https://github.com/user-attachments/files/21299970/sop-network-diagnostics.md)


Network Diagnostics for Internet or DNS Issues
This Standard Operating Procedure (SOP) serves as a structured troubleshooting workflow for remote support technicians responding to internet connectivity problems, particularly in environments like restaurants that rely heavily on Point-of-Sale (POS) systems and cloud-based services.

The SOP is designed to work alongside your PowerShell-based IT Support Toolkit and offers a systematic approach to identify and remediate the most common networking failures, including:

Local IP configuration problems

Faulty DNS resolution

Unresponsive gateways or dropped connections

Incorrect adapter status or media disconnections

It combines both automated and manual troubleshooting techniques:

Executes your network-diagnostics.ps1 script to quickly gather network health data

Provides fallback commands for flushing DNS, resetting IP stacks, and rebooting adapters

Encourages documentation of findings for service ticket traceability

This guide is especially useful for:

Remote troubleshooting of restaurant registers or kiosks

Responding to support calls for slow or inaccessible web-based systems

Diagnosing ISP-level vs local configuration issues

With clear PowerShell examples, reboot-safe steps, and practical resolution logging tips, this SOP helps ensure every technician on your team follows a consistent, reliable process.
