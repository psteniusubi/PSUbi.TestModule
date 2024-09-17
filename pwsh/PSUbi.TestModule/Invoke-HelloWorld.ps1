#Requires -Assembly "PSUbi.TestModule"
using namespace PSUbi.TestModule;
function Invoke-HelloWorld {
    [CmdletBinding()]
    param()
    process {
        Write-Host "Invoke-HelloWorld $([Class1]::new().HelloWorld())"
    }
}
