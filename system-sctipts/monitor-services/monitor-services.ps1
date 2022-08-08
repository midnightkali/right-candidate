$dirFolder = "C:\promedica\"
$services = Import-Csv $dirFolder'test.csv'
[bool]$activeConnection = 1
$timer = 300

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

        if($checkService.Status -eq $service.DesiredStatus){
            Write-Host "All are running OK!"
        } else{
            Write-Host "ELSE IS WORKING"
        }
            

    }
} 


