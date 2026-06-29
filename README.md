# Kind Lab Bootstrap

A lightweight, disposable local Kubernetes lab built with Kind for learning, experimentation, and troubleshooting.

---

## 🎯 Goal

Create a multi-node Kubernetes cluster locally with a single command so you can safely learn, experiment, break things, and start over in minutes.

---

## 🚀 Why This Project?

Many Kubernetes tutorials jump straight into deploying applications. This project starts one step earlier by providing a repeatable local environment that is easy to create, destroy, and recreate.

Instead of worrying about breaking your existing cluster, you can experiment freely.

> **Create → Learn → Break → Reset → Repeat**

---

## 🏗️ Architecture

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

## 📋 Prerequisites

Install the following tools before getting started.

- Docker Desktop (or Colima)
- Homebrew
- Git
- Kind
- kubectl
- k9s
- make

Install the required Kubernetes tools:

```bash
brew install kind kubectl k9s make
```

Verify everything is installed:

```bash
kind version
kubectl version --client
k9s version
make --version
```

---

## ⚡ Quick Start

Clone the repository:

```bash
git clone https://github.com/amarpal-singh5/kind-lab-bootstrap.git
```

Move into the project:

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

Open K9s:

```bash
make k9s
```

---

## 🛠 Available Commands

| Command | Description |
|----------|-------------|
| `make up` | Create the Kind cluster |
| `make status` | Display cluster information |
| `make k9s` | Launch K9s |
| `make down` | Delete the cluster |
| `make reset` | Delete and recreate the cluster |

---

## 📂 Repository Structure

```
kind-lab-bootstrap/
├── Makefile
├── kind-config.yaml
├── README.md
├── docs/
└── labs/
```

---

## 🧪 What's Next?

This repository will continue to grow with hands-on Kubernetes labs.

Planned topics include:

- [ ] Deployments
- [ ] Services
- [ ] ConfigMaps
- [ ] Secrets
- [ ] Health Probes
- [ ] Persistent Volumes
- [ ] RBAC
- [ ] Networking
- [ ] Ingress
- [ ] Observability

---

## 💡 Learning Philosophy

The fastest way to learn Kubernetes is to make your environment disposable.

Build it.

Break it.

Understand why it broke.

Fix it.

Then destroy everything and do it again.

---

## 🤝 Contributions

Suggestions, improvements, and pull requests are always welcome.

If you found this project useful, consider giving it a ⭐.
