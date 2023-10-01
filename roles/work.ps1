# This role is meant to be installed on our work laptops.

# winget
foreach ($package in @(
        "Adobe.Acrobat.Reader.64-bit",
        # Lenovo Comercial Vantage
        "9NR5B8GVVM13",
        "Microsoft.Office",
        "Mozilla.Firefox",
        "Synology.DriveClient",
        # WhatsApp
        "9NKSQGP7F2NH",
        "Zoom.Zoom"
    ) ) { winget install $package }

# load letsencrypt root certificate into the trusted root store
start microsoft-edge:https://valid-isrgrootx1.letsencrypt.org/
