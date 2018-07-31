PUBKEY := $(shell cat ~/.ssh/authorized_keys)

docker:
	ansible-playbook --ask-become-pass -i inventory/hosts playbooks/docker.yaml

pubkey:
	ansible-playbook -i inventory/hosts playbooks/deploy_authorized_keys.yaml --ask-pass --extra-vars='pubkey="${PUBKEY}"'
