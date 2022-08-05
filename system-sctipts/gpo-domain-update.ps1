# DEFINITION
# Executes a forced group policy update for all domain compatible systems

# REQUIREMENTS
# Add-WindowsCapability -Name Rsat.ActiveDirectory.DS-LDS.Tools -Online

# INSTRUCTIONS
# Run powershell as admin
# Add windows capability comdlet

Get-ADComputer -Filter *  | Foreach-Object {Invoke-GPUpdate -Computer $_.name -Force -RandomDelayInMinutes 60}
