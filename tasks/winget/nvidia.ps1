foreach ($package in @(
        "Nvidia.GeForceExperience"
    ) ) { winget install $package }
