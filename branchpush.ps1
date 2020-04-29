$branch = git rev-parse --abbrev-ref HEAD
$remoteBranches = git branch -r
if ($remoteBranches -match "origin/$branch") {
    # Remote branch found--do nothing.
} else {
    #Write-Host "=== Pushing branch $branch to remote repo ==="
    $gs = git status
    if ($gs -match "nothing to commit, working tree clean") {
        #Write-Host "  no need to push branch"
    } else {
        Write-Host "  pushing branch"
        git push --set-upstream origin $branch | Out-Null
    }
}
