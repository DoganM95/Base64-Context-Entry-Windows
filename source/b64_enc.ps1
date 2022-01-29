# Main code
try { 
    $file = "$(Out-String -InputObject %L)".Trim();
    $parentDir = [System.IO.Path]::GetDirectoryName($file);
    $fileName = [System.IO.Path]::GetFileNameWithoutExtension($file);
    $fileExtension = [System.IO.Path]::GetExtension($file);
    Write-Host 'Encoding, please be patient...';
    [convert]::ToBase64String((Get-Content -path "$file" -Encoding byte)) > "$parentDir\$fileName.b64";
    Write-Host 'Successfully converted ' -NoNewline;
    Write-Host "$fileName$fileExtension" -ForegroundColor Yellow;
    Write-Host 'to Base64, located at ' -NoNewLine;
    Write-Host "$parentDir\$fileName.b64" -ForegroundColor Green;
}
catch { 
    Write-Host "An error occured while converting $fileName.$fileExtension file to Base64. $_" -ForegroundColor Red 
} 
Write-Host "`nPress any key to exit..."; 
$Host.UI.RawUI.ReadKey('NoEcho, IncludeKeyDown') | OUT-NULL; $Host.UI.RawUI.FlushInputbuffer(); 
exit

# Single line representation
try { $file = "$(Out-String -InputObject %L)".Trim(); $parentDir = [System.IO.Path]::GetDirectoryName($file); $fileName = [System.IO.Path]::GetFileNameWithoutExtension($file); $fileExtension = [System.IO.Path]::GetExtension($file); Write-Host 'Encoding, please be patient...'; [convert]::ToBase64String((Get-Content -path "$file" -Encoding byte)) > "$parentDir\$fileName.b64"; Write-Host 'Successfully converted ' -NoNewline; Write-Host "$fileName$fileExtension" -ForegroundColor Yellow; Write-Host 'to Base64, located at ' -NoNewLine; Write-Host "$parentDir\$fileName.b64" -ForegroundColor Green; } catch { Write-Host "An error occured while converting $fileName.$fileExtension file to Base64. $_" -ForegroundColor Red } Write-Host "`nPress any key to exit..."; $Host.UI.RawUI.ReadKey('NoEcho, IncludeKeyDown') | OUT-NULL; $Host.UI.RawUI.FlushInputbuffer(); exit

# Registry command
PowerShell -NoExit -windowstyle normal -Command "try { $file = "$(Out-String -InputObject %L)".Trim(); $parentDir = [System.IO.Path]::GetDirectoryName($file); $fileName = [System.IO.Path]::GetFileNameWithoutExtension($file); $fileExtension = [System.IO.Path]::GetExtension($file); Write-Host 'Encoding, please be patient...'; [convert]::ToBase64String((Get-Content -path "$file" -Encoding byte)) > "$parentDir\$fileName.b64"; Write-Host 'Successfully converted ' -NoNewline; Write-Host "$fileName$fileExtension" -ForegroundColor Yellow; Write-Host 'to Base64, located at ' -NoNewLine; Write-Host "$parentDir\$fileName.b64" -ForegroundColor Green; } catch { Write-Host "An error occured while converting $fileName.$fileExtension file to Base64. $_" -ForegroundColor Red } Write-Host "`nPress any key to exit..."; $Host.UI.RawUI.ReadKey('NoEcho, IncludeKeyDown') | OUT-NULL; $Host.UI.RawUI.FlushInputbuffer(); exit"