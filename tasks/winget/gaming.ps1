foreach ($package in @(
        "RiotGames.Valorant.EU",
        "Valve.Steam"
    ) ) { winget install $package }
