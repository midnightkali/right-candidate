powercfg /batteryreport /XML /OUTPUT "batteryreport.xml"
[xml]$battData = Get-Content "batteryreport.xml"

$batteryLevel = $battData.BatteryReport.Batteries | ForEach-Object {
    [PSCustomObject]@{
    DesignCapacity = $_.Battery.DesignCapacity
    FullChargeCapacity = $_.Battery.FullChargeCapacity
    CycleCount = $_.Battery.CycleCount
    Id = $_.Battery.id
    }
}

if (!$BatteryStatus) {
    Write-Host "Are you sure your laptop has batteries? This wont work with desktop computers"
    }
