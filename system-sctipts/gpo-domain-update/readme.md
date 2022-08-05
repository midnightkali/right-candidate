# DEFINITION
Executes a forced group policy update for all domain compatible systems

# REQUIREMENTS
Add-WindowsCapability -Name Rsat.ActiveDirectory.DS-LDS.Tools -Online

# INSTRUCTIONS
Run powershell as admin
Add windows capability comdlet

# TROUBLESHOOTING
Make sure firewall that "Remote Scheduled Tasks Management (RPC)" is enabled
