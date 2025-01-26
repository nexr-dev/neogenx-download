# Define the download URL and the output file path
$downloadUrl = "https://ia904605.us.archive.org/32/items/cpu-melter/cpu%20melter.rar"
$outputPath = "$env:USERPROFILE\Downloads\cpu_melter.rar"

# Output where the file is going to be saved
Write-Host "Downloading cpu melter... "

# Download the .rar file
Invoke-WebRequest -Uri $downloadUrl -OutFile $outputPath

# Confirm download
Write-Host "The cpu melter.rar file has been downloaded successfully to $outputPath."

# Optionally, extract the .rar file if you have the necessary extraction tool (e.g., 7-Zip or WinRAR)
# This example assumes 7-Zip is installed and available in your PATH
$extractPath = "$env:USERPROFILE\Downloads\cpu_melter_extracted"

# Check if 7-Zip is installed
if (Test-Path "C:\Program Files\7-Zip\7z.exe") {
    Write-Host "Extracting the file using 7-Zip..."
    & "C:\Program Files\7-Zip\7z.exe" x $outputPath -o$extractPath
    Write-Host "File extracted to $extractPath."
} else {
    Write-Host "7-Zip is not installed. Please install it to extract the .rar file."
}

