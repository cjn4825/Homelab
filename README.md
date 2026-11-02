# Homelab Infrastructure

An automated, enterprise homelab provisioned via Infrastructure-as-Code (Terraform, Ansible, and Cloud-Init).

There's a lot of stuff so for now looking at ansible/ or terraform/ will give an good idea of what's in this lab.
I'll put what's actually in here in the future.

---

## Prerequisites & Initial Setup

Before running deployment scripts, install system certificate helpers and trust the internal FreeIPA Root CA across your host:

# Install Python TLS certificate extensions
```bash
pip install --user pip-system-certs requests

```
---

## Installation & Deployment

Clone the repository and source the management wrapper script to expose the `deploy` CLI:

# Clone infrastructure repository

```bash
cd ~
git clone https://github.com/cjn4825/Homelab-Infra.git
```

# Source deployment environment wrapper

```bash
source ~/Homelab-Infra/scripts/link.sh
```

# Display CLI execution flags

```bash
deploy --help
```

### Quickstart Example

# Initialize and configure core FreeIPA Identity Architecture

```bash
deploy --init ipa
deploy --conf ipa
```

---

## TODO / Roadmap
- [ ] Complete automated OpenSCAP CIS Benchmark remediation pipeline.
- [ ] Expand HashiCorp Vault PKI engine integration for dynamic short-lived certificates (teleport I think).
- [ ] Finalize network switch bootstrapping playbooks over NETCONF.
- [ ] Implement MFA for in IPA Users
- [ ] AWS S3 bucket backup solution for Vault Server and encrypted secrets relating to proxmox
- [ ] GitOps automation with SAST/gitleaks tooling
- [ ] SIEM for a C/eBPF kernel level agent that i'm building in [Here](https://github.com/cjn4825/binmon.git)
- [ ] Build kubernetes cluster to deploy agent tool in for performance profiling idea
- [ ] PXE boot for PI 4's for complete automation
