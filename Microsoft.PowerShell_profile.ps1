# Hyper-Vの切り替え
function Enable-Hypervisor () { Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All }
function Disable-Hypervisor () { Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V }

# デザイン
Invoke-Expression (&starship init powershell)

# パス
(&mise activate pwsh) | Out-String | Invoke-Expression
