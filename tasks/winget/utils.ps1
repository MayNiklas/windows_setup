# install utils
foreach ($package in @(
        "AgileBits.1Password",
        "Microsoft.Office",
        "Mozilla.Firefox",
        "OBSProject.OBSStudio",
        "REALiX.HWiNFO",
        "Rufus.Rufus",
        "Spotify.Spotify",
        "Yubico.Authenticator"
    )  ) { winget install $package }
