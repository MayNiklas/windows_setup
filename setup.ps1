# install packages via winget
$packages = @(
    # hardware
    "Elgato.StreamDeck",
    "Elgato.WaveLink",
    "Nvidia.GeForceExperience",
    
    # utils
    "Mozilla.Firefox",

    # development
    "Microsoft.WindowsTerminal",
    "Microsoft.VisualStudioCode",

    # communication
    "Discord.Discord",
    "OpenWhisperSystems.Signal",
    "TeamSpeakSystems.TeamSpeakClient",
    "Telegram.TelegramDesktop",

    # game launchers
    "Valve.Steam",
    "RiotGames.Valorant.EU"
)

foreach ($package in $packages) {
    winget install -e $package
    # TODO: ERRORLEVEL does not work - needs to get fixed
    if (%ERRORLEVEL% EQU 0) {
        Write-Output $package installed successfully. 
    }
    else {
        Write-Output $package failed to install. %ERRORLEVEL%
    }
}

# TODO: make sure winget is installed!

# TODO: install drivers?

# TODO: install windows updates?

# TODO: windows settings?

# TODO: install windows features?

# TODO: install server management tools
# Get status: Get-WindowsCapability -Name RSAT* -Online | Select-Object -Property DisplayName, State
# Install all: Get-WindowsCapability -Name RSAT* -Online | Add-WindowsCapability –Online
Add-WindowsCapability -Online -Name Rsat.ServerManager.Tools
Add-WindowsCapability -Online -Name Rsat.GroupPolicy.Management.Tools
