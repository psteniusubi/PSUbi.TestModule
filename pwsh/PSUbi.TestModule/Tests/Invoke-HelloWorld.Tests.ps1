Import-Module "Pester" -MinimumVersion 5.0 -ErrorAction Stop

BeforeAll {
    $psd = Join-Path $PSScriptRoot "../PSUbi.TestModule.psd1" -Resolve -ErrorAction Stop
    Import-Module $psd -Force -ErrorAction Stop
}

Describe "Invoke-HelloWorld" {
    It "Invoke" {
        $null = Invoke-HelloWorld
        $true | Should -BeTrue
    }
}