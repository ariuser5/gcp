# gcp
General purpose GCP consumers and adapters.

## Building the Solution

To build the solution, you need to provide access to the required NuGet package sources. You have two options:

### Option 1: Use `nuget.config` in the Solution Folder

1. Copy or create a `nuget.config` file in the same folder as `gcp.sln`.
2. Ensure it contains the correct package sources and credentials (such as a GitHub token if needed).
3. Build the solution:
	```powershell
	dotnet restore
	dotnet build
	```

### Option 2: Update Global NuGet Configuration

1. Edit `%appdata%\NuGet\NuGet.config` (on Windows) or `~/.config/NuGet/NuGet.config` (on Linux/macOS).
2. Add the required package sources and credentials.
3. Build the solution from anywhere:
	```powershell
	dotnet restore
	dotnet build
	```

> **Note:** Updating the global config affects all .NET projects on your machine.

For more details on configuring NuGet sources and credentials, see the [NuGet documentation](https://learn.microsoft.com/nuget/consume-packages/configuring-nuget-behavior).
