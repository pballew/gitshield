branchpush

$loc = get-location
$loc -match "^.*\\(\w+)$" | Out-Null
$loc = $matches.Get_Item(1)

Write-Host "=== $loc - add/commit/push ==="

$gs = git status
if ($gs -match "nothing to commit, working tree clean") {
    Write-Host "  no changes found to commit"
} else {
    Write-Host "  pushing changes..."
    git add .
    git reset -- CMS/Web.config
    git commit -m $args[0]
    pushsingle
}
