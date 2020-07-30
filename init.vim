for f in split(glob('~/AppData/Local/nvim/configs/*.vim'), '\n')
	exe 'source' f
endfor
