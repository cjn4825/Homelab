# Homelab Infrastructure

An automated, enterprise homelab provisioned via Infrastructure-as-Code (Terraform, Ansible, and Cloud-Init).

There's a lot of stuff so for now looking at ansible/ or terraform/ will give an good idea of what's in this lab.
I'll put what's actually in here in the future.

---

## Prerequisites & Initial Setup

Before running deployment scripts, install system certificate helpers and trust the internal FreeIPA Root CA across your host:

# Install Python TLS certificate extensions
pip install --user pip-system-certs requests

---

## Installation & Deployment

Clone the repository and source the management wrapper script to expose the `deploy` CLI:

# Clone infrastructure repository
cd ~
git clone https://github.com/cjn4825/Homelab-Infra.git

# Source deployment environment wrapper
source ~/Homelab-Infra/scripts/link.sh

# Display CLI execution flags
deploy --help

### Quickstart Example

# Initialize and configure core FreeIPA Identity Architecture
deploy --init ipa
deploy --conf ipa

---

## Client Domain Enrollment (X.509 & Kerberos)

To enroll a new managed Linux host into the FreeIPA domain and automatically issue trusted X.509 certificates via `certmonger`:

# Execute automated client onboarding playbook
ansible-playbook -i inventory/hosts.yml playbooks/enroll_client.yml --extra-vars "target_host=dev-node-01"

---

## TODO / Roadmap
- [ ] Complete automated OpenSCAP CIS Benchmark remediation pipeline.
- [ ] Expand HashiCorp Vault PKI engine integration for dynamic short-lived certificates (teleport I think).
- [ ] Finalize network switch bootstrapping playbooks over NETCONF.
- [ ] 
