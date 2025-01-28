# Path to the 'images' directory
$imagesDir = ".\images"

# Get all files in the 'images' directory with the extensions .jpg, .jpeg, .png, .gif
$imageFiles = Get-ChildItem -Path $imagesDir -File | Where-Object { $_.Extension -match "\.(jpg|jpeg|png|gif)$" }

# Create a list of image paths relative to the project directory
$imagePaths = $imageFiles | ForEach-Object { $_.Name }

# Convert the list to JSON format
$imagePaths | ConvertTo-Json -Depth 3 | Set-Content -Path ".\images.json"

Write-Host "images.json has been generated successfully!"
