# This role is meant to be installed on our work laptops.

# winget
foreach ($package in @(
        "Microsoft.Office",
        "Mozilla.Firefox",
        "Synology.DriveClient",
        # WhatsApp
        "9NKSQGP7F2NH",
        "Zoom.Zoom"
    ) ) { winget install $package }

# load letsencrypt root certificate
start microsoft-edge:https://valid-isrgrootx1.letsencrypt.org/
