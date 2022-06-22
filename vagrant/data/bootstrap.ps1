$currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
Write-Host "IsAdmin: " $currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
#
Install-PackageProvider -Name NuGet -Force
#