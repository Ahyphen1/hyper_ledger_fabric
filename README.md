 🚀 Hyperledger Fabric Setup — Blockchain Assignment

Welcome! 👋  
This repository contains a basic setup for Hyperledger Fabric, created as part of a blockchain coursework assignment. It includes installation steps, a sample network setup, and useful commands to help you get started with developing on Hyperledger Fabric.

---

📚 What’s This Project About?

Hyperledger Fabric is an enterprise-grade permissioned blockchain platform designed for use in industrial or business applications. This project helps you set up a simple Fabric test network using official binaries and Docker containers — perfect for learning, experimentation, and fulfilling assignment goals.

Whether you're running your first smart contract or just trying to understand how the network components communicate, this setup provides a practical entry point.

---

🧰 Prerequisites

Make sure you have the following tools installed on your **Linux (Ubuntu preferred)** system:

- ✅ Git
- ✅ cURL
- ✅ Docker
- ✅ Docker Compose
- ✅ Node.js (v14 or above)
- ✅ npm (comes with Node.js)

> ✅ You can check your versions using commands like `node -v`, `docker -v`, etc.

---

📦 Installation & Setup

Step 1: Clone the Repository
```bash
git clone https://github.com/Ahyphen1/hyper_ledger_fabric.git
cd hyper_ledger_fabric
```
 Step 2: Install Dependencies
```bash
sudo apt update
sudo apt install curl git docker.io docker-compose -y
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt install nodejs -y
```
Step 3: Download Fabric Binaries & Samples
```bash
curl -sSL https://bit.ly/2ysbOFE | bash -s
```

This command will download:
- Fabric binaries
- Docker images
- The official `fabric-samples/` folder

---

🛠️ Starting the Fabric Test Network

Navigate to the test network directory:
```bash
cd fabric-samples/test-network
```

Start the network:
```bash
./network.sh up
```

> This spins up the ordering service, peers, and creates a default channel.

---

➕ (Optional) Deploy Sample Chaincode
```bash
./network.sh deployCC -ccn basic -ccp ../asset-transfer-basic/chaincode-javascript -ccl javascript
```

---

🧪 Sample Chaincode Commands

🔁 Invoke Chaincode (Example)
```bash
peer chaincode invoke -o localhost:7050   --ordererTLSHostnameOverride orderer.example.com   --tls --cafile "$ORDERER_CA"   -C mychannel -n basic   -c '{"function":"InitLedger","Args":[]}'
```

🔍 Query Chaincode (Example)
```bash
peer chaincode query -C mychannel -n basic   -c '{"Args":["GetAllAssets"]}'
```

---



❗ Common Issues & Fixes

| Problem | Solution |
|--------|----------|
| `docker: command not found` | Make sure Docker is installed correctly and service is running |
| `permission denied` errors | Use `sudo` or add your user to the docker group |
| Ports already in use | Edit the `docker-compose.yaml` file to change ports |
| Binary not found errors | Check if binaries (`peer`, `orderer`, etc.) are installed in PATH |

---

🎓 Author

Created by Ahyphen1 
This project is submitted as part of a Blockchain Development Assignment.

---


🌟 *Thank you for visiting this repository. Wishing you success in your blockchain journey and your exams! 🚀
