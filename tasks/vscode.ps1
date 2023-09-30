# install extensions for vscode
foreach ($extension in @(
        "ms-vscode.powershell",
        "GitHub.copilot"
    )  ) { code.cmd --install-extension $extension }
