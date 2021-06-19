co release

wh "git checkout -b $args"
git checkout -b $args

wh "git push -u origin $args"
git push -u origin $args

co $args