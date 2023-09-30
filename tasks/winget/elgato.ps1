foreach ($package in @(
        "Elgato.StreamDeck",
        "Elgato.WaveLink"
    ) ) { winget install $package }
