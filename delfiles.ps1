Get-ChildItem .\ -include $args[0] -Recurse | foreach ($_) { remove-item $_.fullname -Force -Recurse }