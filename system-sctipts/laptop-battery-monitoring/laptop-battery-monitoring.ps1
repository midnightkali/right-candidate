powercfg /batteryreport /XML /OUTPUT "batterydata.xml"
[xml]$battData = Get-Content "batterydata.xml"
