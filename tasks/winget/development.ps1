foreach ($package in @(
        "Git.Git",
        "GitHub.GitHubDesktop",
        "Microsoft.VisualStudioCode",
        "Microsoft.WindowsTerminal",
        "TeXstudio.TeXstudio"
    ) ) { winget install $package }
