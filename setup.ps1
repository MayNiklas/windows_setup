# TODO: make sure winget is installed!

# TODO: install drivers?

# TODO: install windows updates?

# TODO: install windows features?

# TODO: windows settings?

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
    winget install -e -id $package
    if (%ERRORLEVEL% EQU 0) {
        Write-Output $package installed successfully. 
    }
    else {
        Write-Output $package failed to install. %ERRORLEVEL%
    }
}
