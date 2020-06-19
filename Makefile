#

SUBS=$(dir $(wildcard */Makefile))
CLEANS=$(addprefix clean-,$(SUBS))

.PHONY:	love
love:	all

.PHONY:	all
all:	$(SUBS)

.PHONY:	$(SUBS)
$(SUBS):	Makefile
	$(MAKE) -C '$@'

.PHONY:	clean
clean:	$(CLEANS)

.PHONY:	$(CLEANS)
$(CLEANS):
	$(MAKE) -C '$@' clean

.PHONY:	push
push:
	@s="`git status --porcelain`" && [ -z "$$s" ] || { echo "git status not clean, 'git commit' first"; exit 1; }
	git submodule foreach --recursive 'git push' && git push

