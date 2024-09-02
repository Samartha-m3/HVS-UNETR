$pickle = [System.IO.File]::Create("best_metric_model.pth")
foreach ($segment in Get-ChildItem -Filter "bmm_a*" | Sort-Object Name) {
    $bytes = [System.IO.File]::ReadAllBytes($segment.FullName)
    $pickle.Write($bytes, 0, $bytes.Length)
}
$pickle.Close()
Move-Item -Path ".\best_metric_model.pth" -Destination "..\"