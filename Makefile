.PHONY: build publish server clean worktree

# Just run a Hugo build and regenerate the site
build:
	hugo

# Build and push to Github
publish: build
	cd public && git add --all && git commit && git push && cd ..

# For testing changes locally
server:
	hugo server

# Clean out the public directory. Hugo doesn't support deleting removed
# content, so the best way is to start from scratch and not generate those
# pages in the first place.
clean:
	rm -rf public/posts/*

# Create a directory in the project that represents the master branch (which
# is the website, served via pobega.github.io)
worktree:
	git worktree add -B master public origin/master
