publish:
	hugo
	cd public && git add --all && git commit && cd ..

worktree:
	git worktree add -B master public origin/master
