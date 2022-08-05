$Action=New-ScheduledTaskAction -Execute "powershell -Argument –Noprofile -WindowStyle Hidden -ExecutionPolicy Bypass -File C:\Temp\monitor-domain-controller.ps1"
$Trigger=New-ScheduledTaskTrigger -Once -At (Get-Date) -RepetitionInterval (New-TimeSpan -Minutes 5)
$Set=New-ScheduledTaskSettingsSet
$Principal=New-ScheduledTaskPrincipal -UserId pm.local\Administrator
$Task=New-ScheduledTask -Action $Action -Trigger $Trigger -Settings $Set -Principal $Principal
Register-ScheduledTask -TaskName "Domain Cotroller Uptime" -InputObject $Task -Force
