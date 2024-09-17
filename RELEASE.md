# Create release

```powershell
$Version = [Version]::new(0,0,2)

Update-ModuleManifest -Path "pwsh/PSUbi.TestModule/PSUbi.TestModule.psd1" -ModuleVersion $Version

$file = Resolve-Path "cs/PSUbi.TestModule/PSUbi.TestModule.csproj" | Convert-Path
$csproj = [xml]::new()
$csproj.PreserveWhitespace = $true
$csproj.Load($file)
$PackageVersion = $csproj.SelectSingleNode("/Project/PropertyGroup/PackageVersion")
$PackageVersion.InnerText = $Version
$csproj.Save($file)

git commit -a -m "release $Version"
git tag "$Version"
```
