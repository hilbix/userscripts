> You are on the `master` branch.  The scripts are in `gm` branch

# UserScripts

This is bundle of some of my GreaseMonkey scripts.

Branch structure:

- `gm` is the main branch which contains the userscripts for easy reference
- `master` binds all branches together using `git submodule`.
- all other branches keep additional resources for userscripts.

Note that submodules might contain additional submodules, so be sure to use `--recursive`.


## Usage

The `master` branch is used to update everything:

	git clone --recursive https://github.com/hilbix/userscripts.git
	cd userscripts
	# edit
	make
	make push

If you cloned the Repo:

- Use the `https:`-URL to your GH clone in the `git clone`.
- It's important that `origin` points to your copy using the `https://`-URL, else magic breaks.
- `make` then automagically updates everything to use your GH-URL using the `http://`-URL.
- As GM needs read access to the some subresources, the repo probably must be public.

If you are puzzled how to push using `https://`-URLs, you can use following `git`-magic:

	git config --global url.git@github.com:YOURACCOUNT/usersripts.git.insteadOf https://github.com/YOURACCOUNT/userscripts.git

If your `ssh`-key is in your account, you can use a bit more simple variant:

	git config --global url.git@github.com:YOURACCOUNT/.insteadOf https://github.com/YOURACCOUNT/

- This replaces all GH-`https://`-URLs to your account with the `ssh`-URLs
- I firmly do not recommend this for security reasons.
  Instead I use per-repository `ssh`-keys based on writable deployment keys.


## FAQ

WTF why?

- After realizing that the FF extension "GitHub Dark Mode" pulled over 1.4 MiB of JS code I completely freaked out.
- Also this makes updating the CSS a breeze.  As GM automagically refreshes the CSS from GH.

License?

- Following applies to the `master` and `gm` branches:  
  Free as in free beer, free speech and free baby.
- Other branches might have a differenct license.  Please see there.

Contact?  Question?

- Issue on GitHub.  Eventually I listen.

Contrib?  Bugfix?

- PR on GH.  Eventually I listen.

