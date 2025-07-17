[sop-event-log-triage.md](https://github.com/user-attachments/files/21300987/sop-event-log-triage.md)



📋 SOP: Event Log Scanner – Rapid Error & Issue Identification
This Standard Operating Procedure (SOP) outlines how to effectively use the event-log-scanner.ps1 script to identify recent system errors and warnings by analyzing the Windows Event Viewer logs. It is designed to support IT technicians in quickly gathering actionable insights during remote support sessions, especially when dealing with unresponsive applications, system crashes, or unexplained performance degradation.

The script streamlines the process of sifting through dense event logs by automatically pulling the most relevant entries—such as recent application, system, and security errors—based on predefined filters like severity level and time window. The output is formatted for easy reading and can be used to document incidents, support escalation procedures, and inform root cause analysis.

🔍 Key Use Cases
Diagnosing application or system crashes

Investigating freezing or BSOD events

Validating user-reported issues with supporting log evidence

Preparing detailed notes for escalation to Tier 2 or 3 support

Providing transparency in support tickets and documentation

🛠️ What the Script Does
Retrieves logs from Application and System channels

Filters by Error and Warning levels from the last 24 hours (configurable)

Outputs concise summaries with timestamps, sources, and event IDs

Saves or displays results in a readable format (e.g., Notepad or .txt file)

✅ Technician Benefits
Saves time by avoiding manual Event Viewer navigation

Ensures consistency in how issues are identified and logged

Helps demonstrate due diligence in support handling

Facilitates faster resolution and escalation when needed

Use this SOP during troubleshooting sessions to enhance your technical findings, back up decisions with log data, and elevate the overall quality of service delivery.

