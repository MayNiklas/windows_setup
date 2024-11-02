# A list of preinstalled Windows 11 Apps that are less disirable, in theory a cusotm iso couuld also do the trick but thats not what we are going for
Write-Host "Uninstalling some Apps"
$appsToRemove = @(
    "Microsoft.3DBuilder",
    "AdobeSystemsIncorporated.AdobeCreativeCloudExpress",
    "Microsoft.WindowsAlarms",
    "AmazonVideo.PrimeVideo",
    "*.AutodeskSketchBook",
    "Microsoft.BingFinance",
    "Microsoft.BingNews",
    "Microsoft.BingSports",
    "Microsoft.BingWeather",
    "king.com.BubbleWitch3Saga",
    "Microsoft.WindowsCommunicationsApps",
    "king.com.CandyCrushSodaSaga",
    "Clipchamp.Clipchamp",
    "Microsoft.549981C3F5F10",
    "Disney.37853FC22B2CE",
    "*.DisneyMagicKingdoms",
    "DolbyLaboratories.DolbyAccess",
    "Facebook.Facebook*",
    "Microsoft.MicrosoftOfficeHub",
    "Facebook.Instagram*",
    "Microsoft.WindowsMaps",
    "*.MarchofEmpires",
    "Microsoft.Messaging",
    "Microsoft.OneConnect",
    "Microsoft.Office.OneNote",
    "Microsoft.Paint",
    "Microsoft.People",
    "Microsoft.Windows.Photos",
    "Microsoft.Print3D",
    "Microsoft.SkypeApp",
    "*.SlingTV",
    "Microsoft.MicrosoftSolitaireCollection",
    "SpotifyAB.SpotifyMusic",
    "Microsoft.MicrosoftStickyNotes",
    "Microsoft.Office.Sway",
    "*.TikTok",
    "Microsoft.ToDos",
    "*.Twitter",
    "Microsoft.WindowsSoundRecorder",
    "Microsoft.XboxGamingOverlay",
    "Microsoft.GamingApp",
    "Microsoft.YourPhone",
    "Microsoft.ZuneMusic",
    "Microsoft.ZuneVideo",
    "WindowsMediaPlayer",


foreach ($app in $appsToRemove) {
    try {
        Write-Host "Removing app: $app"
        Get-AppxPackage -Name $app | Remove-AppxPackage -ErrorAction SilentlyContinue  
    }
    catch {
        Write-Host "Failed to remove app: $app"
    }

}

# Prevent "Suggested Applications" from returning
Set-ItemProperty "HKLM:\Software\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" 1 -Force
Set-ItemProperty "HKLM:\Software\Policies\Microsoft\Windows\CloudContent" "DisableCloudOptimizedContent" 1 -Force
Set-ItemProperty "HKLM:\Software\Policies\Microsoft\Windows\CloudContent" "DisableConsumerAccountStateContent" 1 -Force
