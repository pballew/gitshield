pullsingle

$subout = git submodule
$subout -match "^.*\w+\s+(\w+)\s+.*$" | Out-Null
for ($i=1; $i -lt $matches.Count; $i++){
    cd $matches.Get_Item($i)
    pullsingle
    cd ..
}
