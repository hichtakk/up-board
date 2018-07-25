docker:
	ansible-playbook --ask-become-pass -i inventory/hosts playbooks/docker.yaml

