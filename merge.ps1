pull

echo "=== Merging repo(s) ==="
$subout = git submodule
$subout -match "^.*\w+\s+(\w+)\s+.*$" | Out-Null
for ($i=1; $i -lt $matches.Count; $i++){
    cd $matches.Get_Item($i)
    git merge origin/dev
    cd ..
}
git merge origin/dev

ci "Merge into dev"
