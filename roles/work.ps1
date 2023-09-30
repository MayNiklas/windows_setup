# This role is meant to be installed on our work laptops.

# winget
foreach ($package in @(
        "Microsoft.Office",
        "Mozilla.Firefox",
        "Synology.DriveClient",
        "WhatsApp.WhatsApp",
        "Zoom.Zoom"
    ) ) { winget install $package }
