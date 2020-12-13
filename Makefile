 
 ifeq (, $(shell which shellcheck))
 $(error "No shellcheck in $(PATH), consider installing it")
 endif

.PHONY: check
check:
	shellcheck deploy.sh
