function Invoke-HelloWorld {
    [CmdletBinding()]
    param()
    process {
        Write-Host "Hello World"
    }
}