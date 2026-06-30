# Kind Lab Bootstrap

A lightweight local Kubernetes environment built with Kind for learning, experimentation, and troubleshooting.

---

## Overview

Kind Lab Bootstrap provides a simple, repeatable way to create a disposable multi-node Kubernetes cluster on your local machine.

The goal is to reduce the friction of learning Kubernetes by making it easy to provision, destroy, and recreate a cluster whenever needed.

---

## Why This Project?

Many Kubernetes tutorials focus on deploying applications but assume you already have a cluster available.

This project focuses on the foundation first by providing a local Kubernetes environment that can be created with a single command.

A disposable environment encourages experimentation. If something breaks, remove the cluster, create a new one, and continue learning.

---

## Architecture

```
                 MacBook
                     │
        Docker Desktop / Colima
                     │
               Kind Cluster
        ┌────────────┼────────────┐
        │            │            │
 Control Plane    Worker 1    Worker 2
        │
   kubectl • k9s • Makefile
```

---

## Prerequisites

Install the following software before getting started.

- Docker Desktop (or Colima)
- Homebrew
- Git
- Kind
- kubectl
- k9s
- make

Install the required tools:

```bash
brew install kind kubectl k9s make
```

Verify the installation:

```bash
kind version
kubectl version --client
k9s version
make --version
```

---

## Quick Start

Clone the repository:

```bash
git clone https://github.com/amarpal-singh5/kind-lab-bootstrap.git
```

Change into the project directory:

```bash
cd kind-lab-bootstrap
```

Create the cluster:

```bash
make up
```

Verify the cluster:

```bash
make status
```

Launch K9s:

```bash
make k9s
```

---

## Available Commands

| Command | Description |
|----------|-------------|
| `make up` | Create the Kind cluster |
| `make status` | Display cluster information |
| `make k9s` | Launch K9s |
| `make down` | Delete the cluster |
| `make reset` | Delete and recreate the cluster |

---

## Repository Structure

```
kind-lab-bootstrap/
├── Makefile
├── kind-config.yaml
├── README.md
├── docs/
└── labs/
```

---

## Roadmap

Planned additions include:

- [ ] Sample application deployment
- [ ] Services
- [ ] ConfigMaps
- [ ] Secrets
- [ ] Health probes
- [ ] Persistent volumes
- [ ] RBAC
- [ ] Networking
- [ ] Ingress
- [ ] Observability

---

## Design Principles

This project is built around a simple idea:

- Local first
- Easy to recreate
- Safe to experiment
- Focused on learning
- Minimal dependencies

The environment is intentionally disposable. Create it, experiment freely, remove it, and start again.

---

## Contributing

Suggestions, improvements, and pull requests are welcome.

If you find this project useful, consider starring the repository.
