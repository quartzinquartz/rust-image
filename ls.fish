function ls --description 'List contents of directory'
	if test (echo $argv | sed '/-/!d')
        and set _args (echo $argv | sed 'y/ /\n/;/^-/{y/A/a/;}')
    else
        set _args $argv
    end
    exa -Fgh --git --group-directories-first $_args
end
