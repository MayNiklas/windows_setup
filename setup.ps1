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
