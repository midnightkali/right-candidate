# DEFINITION
## Constantly monitors the uptime status of the domain controllers and sends an e-mail to the administrator / administrators incase of a failed ping.

# REQUIREMENTS
## Install-WindowsFeature RSAT-ADDS

# INSTRUCTIONS
## Run powershell as admin
## Install RSAT-ADDS
## Configure the mailserver to allow E-Mails from the server you are running the script

# TROUBLESHOOTING
## Make sure in the firewall the the "File and Printer Sharing (Echo Request ICMPv4-In) is enabled
