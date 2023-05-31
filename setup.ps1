# install Windows Update PowerShell Module
Install-Module -Name PSWindowsUpdate

# install windows updates
Get-WindowsUpdate -Install -AcceptAll -IgnoreReboot

# install packages via winget
$packages = @(
    # hardware
    "Elgato.StreamDeck",
    "Elgato.WaveLink",
    "Nvidia.GeForceExperience",

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
