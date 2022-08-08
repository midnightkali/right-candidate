$dirFolder = "C:\promedica\"
$services = Import-Csv $dirFolder'test.csv'
[bool]$activeConnection = "True"
$timer = 300

$smtpServer = 172.16.5.103
$mailAdmin = patmagpantay@pm.local
$mailAlert = mission-control@pm.local
$mailBody = ""
$mailSubject = ""


