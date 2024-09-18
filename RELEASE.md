# Create release

```powershell
$Version = [Version]::new("0.0.3")

Update-ModuleManifest -Path "pwsh/PSUbi.TestModule/PSUbi.TestModule.psd1" -ModuleVersion $Version

$file = Resolve-Path "cs/PSUbi.TestModule/PSUbi.TestModule.csproj" | Convert-Path
$csproj = [xml]::new()
$csproj.PreserveWhitespace = $true
$csproj.Load($file)
$ProjectVersion = $csproj.SelectSingleNode("/Project/PropertyGroup/Version")
$ProjectVersion.InnerText = $Version
$csproj.Save($file)

git commit -a -m "release $Version"
git tag "release/$Version"
```
