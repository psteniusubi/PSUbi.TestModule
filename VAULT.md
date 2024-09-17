# Register

```powershell
Register-SecretVault -Name "LocalStore" -ModuleName "Microsoft.PowerShell.SecretStore" -DefaultVault
```

# Unlock 

```powershell
Unlock-SecretVault -Name "LocalStore"
```

# Add secret

```powershell
$Credential = Get-Credential -UserName "psteniusubi"
Set-Secret -Vault "LocalStore" -Name "psteniusubi" -Secret $Credential
```

## Read 

```powershell
Get-Secret -Vault "LocalStore" -Name "psteniusubi" 
```
