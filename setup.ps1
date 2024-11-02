# TODO: make sure winget is installed!
# TODO: split this into seperate files / roles

# TODO: install drivers?

# TODO: uninstall bloatware?

# TODO: install windows updates?

# TODO: windows settings?

# TODO: install windows features?

# TODO: install server management tools
# Get status: Get-WindowsCapability -Name RSAT* -Online | Select-Object -Property DisplayName, State
# Install all: Get-WindowsCapability -Name RSAT* -Online | Add-WindowsCapability –Online
# Add-WindowsCapability -Online -Name Rsat.ServerManager.Tools
# Add-WindowsCapability -Online -Name Rsat.GroupPolicy.Management.Tools

#Begin the actual script
#TODO: Make this nicer
Write-Host "Check for winget"
# Check if winget is installed by attempting to get its version
try {
    $wingetVersion = winget --version
    if ($wingetVersion) {
        # Do nothing winget is installed
    }
} catch {
    Write-Host "Installing Winget since not found in path"
    iex "& { $(irm https://aka.ms/install-winget.ps1) }"
}
