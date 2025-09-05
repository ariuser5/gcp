param(
    [string]$DeployPath
)

if (-not $DeployPath) {
    Write-Host "Please specify a deployment path using -DeployPath"
    exit 1
}

$projectPath = "GCP-Mailflow/src/cli/mailflow.csproj"
$publishDir = "publish_tmp"

# Build and publish the app
dotnet publish $projectPath -c Release -o $publishDir

# Create the target directory if it doesn't exist
if (-not (Test-Path $DeployPath)) {
    New-Item -ItemType Directory -Path $DeployPath | Out-Null
}

# Copy published files to the deployment directory
Copy-Item "$publishDir\\*" $DeployPath -Recurse -Force

# Clean up
Remove-Item $publishDir -Recurse -Force

Write-Host "Mailflow app deployed to $DeployPath"