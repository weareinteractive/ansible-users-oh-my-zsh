PWD=$(shell pwd)
ROLE_NAME=weareinteractive.users_oh_my_zsh
ROLE_PATH=/etc/ansible/roles/$(ROLE_NAME)
TEST_VERSION=ansible --version
TEST_DEPS=apt-get update && ansible-galaxy install weareinteractive.git weareinteractive.users
TEST_SYNTAX=ansible-playbook -v -i 'localhost,' -c local $(ROLE_PATH)/tests/main.yml --syntax-check
TEST_PLAYBOOK=ansible-playbook -vvvv -i 'localhost,' -c local $(ROLE_PATH)/tests/main.yml
TEST_CMD=$(TEST_DEPS); $(TEST_VERSION); $(TEST_SYNTAX); $(TEST_PLAYBOOK); $(TEST_PLAYBOOK)

ubuntu16.04: dist=ubuntu-16.04
ubuntu16.04: .run

# currently disabled due to https://github.com/ansible/galaxy/issues/795
# ubuntu14.04: dist=ubuntu-14.04
# ubuntu14.04: .run

debian9: dist=debian-9
debian9: .run

debian8: dist=debian-8
debian8: .run

.run:
	# @echo "RUN: $(TEST_CMD)"
	# @docker run -it --rm -v $(PWD):$(ROLE_PATH) ansiblecheck/ansiblecheck:$(dist) /bin/bash
	@docker run -it --rm -v $(PWD):$(ROLE_PATH) ansiblecheck/ansiblecheck:$(dist) /bin/bash -c "$(TEST_CMD)"
