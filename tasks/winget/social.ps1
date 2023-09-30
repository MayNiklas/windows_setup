foreach ($package in @(
        "Discord.Discord",
        "OpenWhisperSystems.Signal",
        "TeamSpeakSystems.TeamSpeakClient",
        "Telegram.TelegramDesktop",
        "WhatsApp.WhatsApp",
        "Zoom.Zoom"
    ) ) { winget install $package }
