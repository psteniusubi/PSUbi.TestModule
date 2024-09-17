# PS Repository

```powershell
$CredentialInfo = [Microsoft.PowerShell.PSResourceGet.UtilClasses.PSCredentialInfo]::new("LocalStore", "psteniusubi")
Register-PSResourceRepository -Name "psteniusubi" -Uri "https://nuget.pkg.github.com/psteniusubi/index.json" -CredentialInfo $CredentialInfo
```

## Find

```powershell
Find-PSResource -Repository "psteniusubi" -Name "psubi.*"
```

## Install

```powershell
Install-PSResource -Repository "psteniusubi" -Name "PSUbi.TestModule" -TrustRepository -Verbose
```
