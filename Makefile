#
#

lint:
	git diff origin/master --name-only | grep '.yml$$' | grep -v 'meta' | xargs --no-run-if-empty ansible-lint -x 703,701

all:
	@echo "Makefile needs your attention"


# vim:ft=make
#
