pull

echo "=== Creating branch(s) ======================="
git checkout -b $args[0]
#git push --set-upstream origin $args[0]
git submodule foreach git checkout -b $args[0]
#git submodule foreach git push --set-upstream origin $args[0]
