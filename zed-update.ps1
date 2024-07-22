# Define the repo owner and name
$repoOwner = "geerteltink"
$repoName = "zed-windows"

# Build the URL to get the latest release
$releasesUrl = "https://api.github.com/repos/$repoOwner/$repoName/releases/latest"

# Download the JSON data for the latest release
$releaseData = Invoke-WebRequest -Uri $releasesUrl

# Check for successful download
if ($releaseData.StatusCode -eq 200) {
  # Convert JSON data to object
  $release = ConvertFrom-Json $releaseData.Content

  # Extract download URL for the first asset (assuming it's the desired file)
  $source = $release.assets[0].browser_download_url
  $version = $release.tag_name

  # Define the download path and filename (modify as needed)
  $downloadPath = "$PSScriptRoot"
  $fileName = $release.assets[0].name
  $destination = "$downloadPath\$fileName"

  Write-Host "Downloading $fileName ($version)"
  Write-Host "Source: $source"
  Write-Host "Download location: $downloadPath\$fileName"

  # Download the file
  Import-Module BitsTransfer
  Start-BitsTransfer -Source $source -Destination $destination

  Write-Host "Downloaded file: $fileName"
} else {
  Write-Error "Failed to download release data. Status code: $($releaseData.StatusCode)"
}
