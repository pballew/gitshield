$branch = git rev-parse --abbrev-ref HEAD | Out-String

co dev
pull

echo "=== Merging repo(s) =========================="
$subout = git submodule
$subout -match "^.*\w+\s+(\w+)\s+.*$" | Out-Null
for ($i=1; $i -lt $matches.Count; $i++){
    cd $matches.Get_Item($i)
    git merge origin/$branch
    cd ..
}
git merge origin/$branch

push
