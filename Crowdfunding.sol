# Crowdfunding Smart Contract

A simple Solidity-based crowdfunding contract that enables users to contribute funds toward a project goal with additional functionalities for refunds and contribution tracking.

---

## 🔧 Features

- Set a **funding goal** and **deadline** upon deployment.
- Accept **Ether contributions** from participants.
- Track individual contributions.
- Allow **owner withdrawal** if the funding goal is met after the deadline.
- Enable **refunds** if the funding goal is not reached.
- View contributions made by a specific address.
- View campaign details.

---

## 🧾 Functions Overview

### `contribute()`
Contribute Ether to the campaign before the deadline.

### `withdraw()`
Withdraws funds to the owner if:
- Deadline has passed.
- Funding goal has been met.

### `refund()`
Refunds contributors if:
- Deadline has passed.
- Funding goal has not been met.

### `getContributorContribution(address _contributor)`
Returns the total amount contributed by a specific address.

### `getDetails()`
Returns key campaign information:
- Owner address.
- Funding goal.
- Campaign deadline.
- Total raised amount.
- Campaign status (active/inactive).

---

## 🛠 Deployment Instructions

1. Deploy the contract with:
   - `_goal`: Target funding amount (in wei).
   - `_durationInDays`: Campaign duration.

2. Interactions:
   - **Contribute** funds using the `contribute` function.
   - **Check contributions** using the `getContributorContribution` function.
   - After the deadline:
     - If the goal is reached, the owner can `withdraw`.
     - If the goal is not reached, contributors can `refund`.

---

## ⚠️ Important Notes

- Only the contract owner can call the `withdraw` function.
- Refunds are only available if the funding goal is not met after the campaign deadline.

---

## 📄 License

This project is licensed under the MIT License.
