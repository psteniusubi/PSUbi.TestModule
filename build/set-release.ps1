[CmdletBinding()]
param(
    [Parameter(Mandatory = $true, Position = 0)]
    [version]
    $Version
)
process {
    $root = Split-Path $PSScriptRoot -Parent -Resolve -ErrorAction Stop
    $psd = Join-Path $root "pwsh/PSUbi.TestModule/PSUbi.TestModule.psd1" -Resolve -ErrorAction Stop | Convert-Path
    $csproj = Join-Path $root "cs/PSUbi.TestModule/PSUbi.TestModule.csproj" -Resolve -ErrorAction Stop | Convert-Path
    
    $null = Update-ModuleManifest -Path $psd -ModuleVersion $Version -ErrorAction Stop

    $xml = [xml]::new()
    $xml.PreserveWhitespace = $true
    $null = $xml.Load($csproj)
    $ProjectVersion = $xml.SelectSingleNode("/Project/PropertyGroup/Version")
    $ProjectVersion.InnerText = $Version
    $null = $xml.Save($csproj)

    Write-Host -ForegroundColor Green @"
git commit -a -m "release v$($Version)"
git tag "release/v$($Version)"
"@
}