powercfg /batteryreport /XML /OUTPUT "batteryreport.xml"
[xml]$battData = Get-Content "batteryreport.xml"

$batteryLevel = $battData.BatteryReport.Batteries | ForEach-Object {
    [PSCustomObject]@{
    designCapacity = $_.Battery.DesignCapacity
    fullChargeCapacity = $_.Battery.FullChargeCapacity
    cycleCount = $_.Battery.CycleCount
    id = $_.Battery.id
    }
}

if (!$batteryStatus) {
    Write-Host "Are you sure your laptop has batteries? This wont work with desktop computers"
    }

foreach ($battery in $batteryStatus) {

}
