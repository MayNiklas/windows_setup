foreach ($package in @(
        "Discord.Discord",
        "OpenWhisperSystems.Signal",
        "TeamSpeakSystems.TeamSpeakClient",
        "TeamSpeakSystems.TeamSpeakClient",
        "Telegram.TelegramDesktop",
        # WhatsApp
        "9NKSQGP7F2NH",
        "Zoom.Zoom"
    ) ) { winget install $package }
