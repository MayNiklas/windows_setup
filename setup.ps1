# TODO: make sure winget is installed!

# install packages via winget
$packages = @(
    # hardware
    "Elgato.StreamDeck",
    "Elgato.WaveLink",
    "Nvidia.GeForceExperience",
    "Samsung.SamsungMagician",
    "REALiX.HWiNFO",
    
    # utils
    "AgileBits.1Password",
    "Mozilla.Firefox",
    "OBSProject.OBSStudio",
    "Rufus.Rufus",
    "Spotify.Spotify",
    "TeXstudio.TeXstudio",
    "VideoLAN.VLC",
    "Yubico.Authenticator",

    # office
    "Microsoft.Office",
    "Synology.DriveClient",
    "Synology.ActiveBackupForBusinessAgent",
    "Zoom.Zoom",

    # development
    "Git.Git",
    "GitHub.GitHubDesktop",
    "Microsoft.VisualStudioCode",
    "Microsoft.WindowsTerminal",

    # WSL
    "Canonical.Ubuntu.2204",

    # communication
    "Discord.Discord",
    "OpenWhisperSystems.Signal",
    "TeamSpeakSystems.TeamSpeakClient",
    "Telegram.TelegramDesktop",
    "Zoom.Zoom",

    # game launchers
    "ElectronicArts.EADesktop",
    "Valve.Steam",
    "RiotGames.Valorant.EU"
)

foreach ($package in $packages) {
    winget install $package
}

# TODO: install drivers?

# TODO: uninstall bloatware?

# TODO: install windows updates?

# TODO: windows settings?

# TODO: install windows features?

# TODO: install server management tools
# Get status: Get-WindowsCapability -Name RSAT* -Online | Select-Object -Property DisplayName, State
# Install all: Get-WindowsCapability -Name RSAT* -Online | Add-WindowsCapability –Online
Add-WindowsCapability -Online -Name Rsat.ServerManager.Tools
Add-WindowsCapability -Online -Name Rsat.GroupPolicy.Management.Tools
