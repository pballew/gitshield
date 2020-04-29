$remoteBranches = git branch -r
$branch = git rev-parse --abbrev-ref HEAD
$loc = get-location
$loc -match "^.*\\(\w+)$" | Out-Null
$loc = $matches.Get_Item(1)

Write-Host "=== Pushing repo: $loc ==="
if ($remoteBranches -match "origin/$branch") {
    # do nothing
} else {
    git push --set-upstream origin $branch
}
git push
