$pmDomains = (Get-ADDomainController -Filter *).name | Sort-Object

foreach ($dc in $pmDomains) {
    Test-Connection $dc 
}
