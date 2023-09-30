foreach ($package in @(
        "ElectronicArts.EADesktop",
        "RiotGames.Valorant.EU",
        "Valve.Steam"
    ) ) { winget install $package }
