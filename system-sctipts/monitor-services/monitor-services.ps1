$dirFolder = "C:\promedica\"
$services = Import-Csv $dirFolder'test.csv'
[bool]$activeConnection = 1


$smtpServer = 172.16.5.103
$mailAdmin = "patmagpantay@pm.local"
$mailAlert = "mission-control@pm.local"
$mailBody = ""
$mailSubject = ""

while($activeConnection -eq 1){
    foreach($service in $services){
        $checkService = Get-Service | WHERE {$_.Name -eq $service.ServiceName}
        
        $mailBody = "Service named: " + $checkService.DisplayName + "is down for hostname " + $env:computername 
        $mailSubject = $env:computername + " Needs your immediate attention"

        
    }
} 
