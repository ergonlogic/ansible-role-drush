
tests/roles/ergonlogic.drush:
	@echo "Creating symlink to include this role for tests."
	@cd tests/roles && \
  ln -s ../../.. ergonlogic.drush

ansible-playbook-test: tests/roles/ergonlogic.drush

include .mk/GNUmakefile
