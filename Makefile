include .mk/GNUmakefile

$(ANSIBLE_ROLES_PATH)/ergonlogic.drush: $(ANSIBLE_ROLES_PATH)
	@echo "Creating symlink to include this role for tests."
	rm -f $(ANSIBLE_ROLES_PATH)/ergonlogic.drush
	cd $(ANSIBLE_ROLES_PATH) && \
  ln -f -s ../.. ergonlogic.drush

ansible-playbook-test: $(ANSIBLE_ROLES_PATH)/ergonlogic.drush

