$pmDC = (Get-ADDomainController -Filter *).Name 

foreach ($dcs in $pmDC) {
    
    Try {
        Test-Connection $dcs -Count 1  -ErrorAction Stop | Out-Null
    }

    Catch {
        $domCon = (Get-ADDomainController $dcs).Name
        $ipAdd = (Get-ADDomainController $dcs).IPv4Address
        $date = Get-Date -Format "MM/dd/yyyy HH:mm:ss"
        
        Write-Host "$date : $domCon with the $ipAdd is DOWN! Sending emergency e-mail alert!"
        
        Send-MailMessage -From 'LocalMissionControl <mission-control@pm.local>' -To 'Pat Magpantay <patmagpantay@pm.local>' 
        -SmtpServer smtp.pm.local 
        -Subject "Domain: $domCon is DOWN!!" 
        -Body "$domCon with the $ipAdd is DOWN!"


    }
}
