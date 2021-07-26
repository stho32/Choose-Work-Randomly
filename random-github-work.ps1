#!/snap/bin/pwsh
Set-Location $PSScriptRoot
$ErrorActionPreference = "Stop"

Set-Location ../Todo

$files = Get-ChildItem "*.txt"

$filesNTimes = $files | Foreach-Object {
    $file = $_
    $filename = $file.Name
    $split = $filename.Split("_")
    $count = [int]$split[0]
    for ($i = 0; $i -lt $count; $i++) {
        $filename
    }
}

1..10 | Foreach-Object {
    Write-Host $_
    Write-Host ""
    $randomlyChoosenFile = $filesNTimes | Get-Random
    $content = Get-Content $randomlyChoosenFile

    if ( $randomlyChoosenFile.Contains("shellcmd") ) {
        Invoke-Expression $content 
    } else {
        Write-Host $content
    }

    Set-Location $PSScriptRoot/../Todo
}

Set-Location $PSScriptRoot
