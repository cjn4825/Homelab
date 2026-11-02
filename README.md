# Homelab

Repo that includes files used in my Homelab.

# Usage

## Code
```bash
# go to home dir
git clone https://github.com/cjn4825/Homelab-Infra.git

# source deploy script
source ~/Homelab-Infra/scripts/link.sh

deploy --help

```
todo for readme:
pip needs pip-system-certs installed and requests library add to readme also with
moving the cert to the system for full tls with link
also for adding permissions in sudo visudo for installing ipa and using it without sudo

also add how to attach your host for valid certs to the domain: run the playbook
and put what the command is
