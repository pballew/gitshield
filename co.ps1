git checkout $args[0]
git pull
git submodule foreach git checkout $args[0]
git submodule foreach git pull
pull