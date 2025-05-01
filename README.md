# Crowdfunding Smart Contract

This is a minimalist Solidity smart contract for a decentralized crowdfunding application (DApp). It allows users to contribute Ether toward a funding goal set by the contract owner. If the goal is met before the deadline, the owner can withdraw the raised funds.

---

## 🔧 Features

- Set a **funding goal** and **deadline** on deployment.
- Accept **Ether contributions** from anyone.
- Allow **withdrawal by owner** only if goal is met and deadline has passed.
- Simple read-only function for fetching campaign details.

---

## 🧾 Functions Overview

### `contribute()`
- Accepts Ether contributions.
- Only allowed before the campaign deadline.

### `withdraw()`
- Callable only by the owner.
- Transfers all funds to owner if the goal is met after the deadline.

### `getDetails()`
- Returns campaign details like owner, goal, deadline, raised amount, sender’s contribution, and if the campaign is active.

---

## 🛠 Deployment Instructions

1. Deploy using Remix, Hardhat, or any Ethereum-compatible development environment.
2. Pass two parameters during deployment:
   - `_goal`: The target funding amount in wei.
   - `_durationInDays`: The duration of the campaign.

---

## 📄 License

This project is licensed under the MIT License.
## Contract Details :0xBAcd2ae0a931eBd758771a50d3a2Bf1E2822397a

<img width"1470" alt ="image" src=" ![image](https://github.com/user-attachments/assets/4a2ff405-cfe5-4d2e-9d7a-c3264c045c1f)
"/>
