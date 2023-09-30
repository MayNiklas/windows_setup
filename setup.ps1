# TODO: make sure winget is installed!
# TODO: split this into seperate files / roles

# install packages I want to install on my work computer
foreach ($package in @(
        "Microsoft.Office",
        "Synology.DriveClient",
        "WhatsApp.WhatsApp",
        "Zoom.Zoom"
    ) ) { winget install $package }

# install packages I only want to install on my desktop
foreach ($package in @(
        "Elgato.StreamDeck",
        "Elgato.WaveLink",
        "Nvidia.GeForceExperience"
    ) ) { winget install $package }

# install utils
foreach ($package in @(
        "AgileBits.1Password",
        "Mozilla.Firefox",
        "OBSProject.OBSStudio",
        "Rufus.Rufus",
        "Spotify.Spotify",
        "REALiX.HWiNFO",
        "Yubico.Authenticator"
    )  ) { winget install $package }

# install communication tools
foreach ($package in @(
        "Discord.Discord",
        "OpenWhisperSystems.Signal",
        "TeamSpeakSystems.TeamSpeakClient",
        "Telegram.TelegramDesktop",
        "WhatsApp.WhatsApp",
        "Zoom.Zoom"
    ) ) { winget install $package }

# install gaming related packages
foreach ($package in @(
        "ElectronicArts.EADesktop",
        "RiotGames.Valorant.EU",
        "Valve.Steam"
    ) ) { winget install $package }

# install development tools
foreach ($package in @(
        "Canonical.Ubuntu.2204",
        "Git.Git",
        "GitHub.GitHubDesktop",
        "Microsoft.VisualStudioCode",
        "Microsoft.WindowsTerminal",
        "TeXstudio.TeXstudio"
    ) ) { winget install $package }

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
