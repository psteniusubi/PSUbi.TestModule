# Azure Repository

```powershell
Register-PSResourceRepository -Name "Ubisecure-Research" -Uri "https://pkgs.dev.azure.com/Ubisecure/Research/_packaging/Modules/nuget/v3/index.json" 
```

## Find

```powershell
Find-PSResource -Repository "Ubisecure-Research" -Name "PSUbi.TestModule"
```

## Install

```powershell
Install-PSResource -Repository "Ubisecure-Research" -Name "PSUbi.TestModule" -TrustRepository -Verbose
```

# GitHub Repository

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
