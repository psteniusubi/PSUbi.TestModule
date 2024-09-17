# resolve lib directory
if ($PSEdition -eq "Core") {
    $lib = Join-Path $PSScriptRoot "lib/net8.0" -Resolve -ErrorAction Stop
}
elseif ($PSEdition -eq "Desktop") {
    $lib = Join-Path $PSScriptRoot "lib/net481" -Resolve -ErrorAction Stop
}
else {
    [System.InvalidOperationException]::new()
}
# find all dll files
$libs = Get-ChildItem -Path $lib -Filter "*.dll" | Convert-Path | Sort-Object
# load dll files
$null = Add-Type -Path $libs -ErrorAction Stop

