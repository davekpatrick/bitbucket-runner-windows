$currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
Write-Host "IsAdmin: " $currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
# download the runner zip
Invoke-WebRequest -Uri https://product-downloads.atlassian.com/software/bitbucket/pipelines/atlassian-bitbucket-pipelines-runner-1.330.zip -OutFile .\atlassian-bitbucket-pipelines-runner.zip
# unzip the file
Expand-Archive .\atlassian-bitbucket-pipelines-runner.zip
#
cd .\atlassian-bitbucket-pipelines-runner\bin
.\start.ps1 -accountUuid '{8462e43d-34a1-421d-bf72-a16165bb1030}' -runnerUuid '{493861a8-ff17-50b4-ab4d-f2fc4659d693}' -OAuthClientId XHoqLWLKzRL863cZ5ujqX0a53nGozOdV -OAuthClientSecret s3S5DwzyH1DeKJF2F7Uz-AgY1aUI8T5rk0LMOoJRMaEckgiqo6yh_LP4tECdjzPd -workingDirectory '..\temp'