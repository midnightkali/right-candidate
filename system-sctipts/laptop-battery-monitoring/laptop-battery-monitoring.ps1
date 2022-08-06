powercfg /batteryreport /XML /OUTPUT "batteryreport.xml"

[xml]$battData = Get-Content "batteryreport.xml"

$batteryLevel = $battData.BatteryReport.Batteries | ForEach-Object {
    
    [PSCustomObject]@{
    DesignCapacity = $_.Battery.DesignCapacity
    FullChargeCapacity = $_.Battery.FullChargeCapacity
    CycleCount = $_.Battery.CycleCount
    Id = $_.Battery.id
    Chemistry = $_.Battery.Chemistry
    }
    
}

if (!$batteryLevel) {
    Write-Host "Are you sure your laptop has batteries? This wont work with desktop computers"
    }

foreach ($battery in $batteryLevel) {
    Write-host "You are using $($battery.Chemistry) You have a capacity of $($battery.DesignCapacity) and $($battery.FullChargeCapacity) left. You're battery info is $($battery.id)"
}
