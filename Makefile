include .mk/GNUmakefile

$(ANSIBLE_ROLES_PATH)/ergonlogic.drush: $(ANSIBLE_ROLES_PATH)
	@echo "Creating symlink to include this role for tests."
	@cd $(ANSIBLE_ROLES_PATH) && \
  ln -s ../../../.. ergonlogic.drush

ansible-playbook-test: $(ANSIBLE_ROLES_PATH)/ergonlogic.drush

