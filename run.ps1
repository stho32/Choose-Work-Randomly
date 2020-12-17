Set-Location $PSScriptRoot

cd ..

$chooseRepository = (1..10 | Get-Random) -eq 1

if ($chooseRepository) {
    Write-Host "Bitte überlege Dir neue Ideen für: " -ForegroundColor Green
    (Get-ChildItem | Get-Random -Count 1).FullName 
} else {
    Write-Host "Bitte überarbeite: " -ForegroundColor Cyan
    (Get-ChildItem -Recurse | Get-Random -Count 1).FullName
}



