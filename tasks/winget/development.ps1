foreach ($package in @(
        "Canonical.Ubuntu.2204",
        "Git.Git",
        "GitHub.GitHubDesktop",
        "Microsoft.VisualStudioCode",
        "Microsoft.WindowsTerminal",
        "TeXstudio.TeXstudio"
    ) ) { winget install $package }
