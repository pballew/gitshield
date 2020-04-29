$remoteBranches = git branch -r
$branch = git rev-parse --abbrev-ref HEAD
$loc = get-location
$loc -match "^.*\\(\w+)$" | Out-Null
$loc = $matches.Get_Item(1)

Write-Host "=== Pulling from remote: $loc ==="
if ($remoteBranches -match "origin/$branch") {
    git pull
} else {
    Write-Host "  not pulling--branch not on repo yet ==="
}
