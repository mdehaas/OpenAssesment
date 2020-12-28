$regHive = "HKLM"
$regKey = "System\CurrentControlSet\Services\Kdc"
$regValue = "PerformTicketSignature"
$regType = "DWord"
$regData = 0

### END CONFIGURATION #################################################
$Platform = "Server"
$Area = "Stability"
$Subject = "HardErrorMode"

try
{
    $exists = Get-ItemProperty -Path "$($regHive):\$($regKey)" -Name "$($regValue)" -ErrorAction SilentlyContinue
    if (($exists -eq $null) -or ($exists.Length -eq 0)) {
        Write-Output $false
    } else {
        if ((Get-ItemPropertyValue -Path "$($regHive):\$($regKey)" -Name "$($regValue)") -eq $regData) {
            Write-Output $true
        } else {
            Write-Output $false
        }
    }
}
catch
{
    Write-Output $false
}
