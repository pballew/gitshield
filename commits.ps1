$branch = git rev-parse --abbrev-ref HEAD

wh "git log origin/$branch..HEAD"
git log origin/$branch..HEAD