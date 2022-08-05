Get-ADComputer -Filter * | ForEach-Object {
     Invoke-GPUpdate -Computer $_.name -Force -RandomDelayInMinutes 30
}

