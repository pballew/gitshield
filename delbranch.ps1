echo "=== Returning to dev branch ======================="
co dev

echo "=== Deleting submodule branch ====================="
git submodule foreach git branch -d $args

echo "=== Deleting branch ==============================="
git branch -d $args
