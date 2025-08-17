# 🎁 Donation Box Contract
## 📜 Project Description
This project is a decentralized **donation platform** built using the Clarity smart contract language and deployed on the **Stacks blockchain**. The smart contract enables individuals and organizations to collect STX donations in a fully transparent and trustless manner. Every donation is recorded on-chain, creating an immutable record of contributions while allowing donors to remain pseudonymous through their wallet addresses.

The contract handles donation collection, contributor tracking, and fund withdrawal — all without requiring any centralized payment processors or intermediaries.

---

## 🔭 Project Vision
The vision behind this project is to **democratize fundraising and charitable giving** on the blockchain. By building a transparent donation system, we aim to:

* Enable trustless charitable giving where donors can verify fund usage on-chain.
* Eliminate intermediaries and reduce fees associated with traditional donation platforms.
* Provide transparency that builds donor confidence and accountability.
* Create a foundation for more sophisticated crowdfunding and charitable mechanisms.
* Support causes, creators, and organizations through direct peer-to-peer donations.

---

## ⭐ Key Features

* 💰 **Accept Donations:** Anyone can send STX donations to the contract.
* 📊 **Track Contributors:** Maintains a permanent record of all donors and amounts.
* 🔍 **Full Transparency:** All donations and withdrawals are publicly viewable on-chain.
* 👑 **Owner Controls:** Contract owner can withdraw collected funds to specified addresses.
* 📈 **Real-time Analytics:** View total donations and individual contribution histories.
* 🔐 **Secure Transfers:** Built-in STX transfer validation ensures safe transactions.
* 📝 **Event Logging:** All actions are logged for complete audit trails.
* 🌐 **Pseudonymous Privacy:** Donors maintain privacy through wallet addresses.

---

## 🎮 How to Use

### For Donors:
```clarity
;; Donate 5 STX to the cause
(contract-call? .donation-box donate u5000000)

;; Check total donations collected
(contract-call? .donation-box get-total-donations)

;; View your personal contribution history
(contract-call? .donation-box get-donated-amount 'SP1234...)
```

### For Contract Owner:
```clarity
;; Withdraw 10 STX to a specific address
(contract-call? .donation-box withdraw u10000000 'SP5678...)

;; Check current contract balance
(stx-get-balance 'CONTRACT_ADDRESS)
```

---

## 📋 Contract Functions

### Public Functions (Anyone):
- **`donate`** - Send STX donations to the contract
  - Parameters: `amount` (uint) - Amount in microSTX to donate

### Public Functions (Owner Only):
- **`withdraw`** - Transfer collected funds to specified recipient
  - Parameters: `amount` (uint), `recipient` (principal)

### Read-Only Functions:
- **`get-total-donations`** - View total STX collected by the contract
- **`get-donated-amount`** - Check how much a specific donor has contributed
  - Parameters: `donor` (principal) - Address to check

---

## 💡 Use Cases

### Charitable Organizations:
- **Transparent Fundraising:** Donors can verify exactly how much has been raised
- **Global Accessibility:** Accept donations from anywhere in the world
- **Reduced Fees:** Eliminate credit card processing and platform fees
- **Audit Trail:** Complete on-chain record for compliance and reporting

### Content Creators:
- **Fan Support:** Enable direct support from followers and fans  
- **Milestone Funding:** Raise funds for specific projects or goals
- **Community Building:** Create engaged donor communities
- **Revenue Diversification:** Alternative to traditional monetization methods

### Open Source Projects:
- **Development Funding:** Sustainable funding for ongoing development
- **Community Contributions:** Allow users to support valuable projects
- **Transparent Allocation:** Show how funds are being used

### Emergency Relief:
- **Rapid Response:** Quick deployment for disaster relief efforts
- **Direct Impact:** Funds go directly to relief efforts without intermediaries
- **Global Reach:** Accept donations from international supporters

---

## 🛡️ Security Features

* **Owner Authorization:** Only contract deployer can withdraw funds
* **Transfer Validation:** Built-in STX transfer safety checks
* **Immutable Records:** All donation data permanently stored on-chain
* **No Fund Loss:** Donors can verify their contributions are recorded
* **Transparent Operations:** All contract activities are publicly auditable

---

## 📊 Analytics & Transparency

The donation box provides complete transparency through:

### Public Metrics:
- **Total Donations Collected:** Real-time sum of all contributions
- **Individual Donor History:** Complete contribution record per address
- **Transaction Logs:** Detailed event logs for every donation
- **Contract Balance:** Current STX balance available for withdrawal

### Audit Features:
- **Immutable Record:** All data permanently stored on Stacks blockchain
- **Public Verification:** Anyone can verify donation amounts and recipients
- **Complete Trail:** From donation to withdrawal, every transaction is tracked

---

## 🚀 Future Scope

* 🎯 **Campaign Goals:** Add fundraising targets and progress tracking
* ⏰ **Time-limited Campaigns:** Implement start/end dates for fundraising periods
* 🏆 **Donor Recognition:** NFT rewards or badges for significant contributors  
* 💬 **Messaging System:** Allow donors to include messages with donations
* 📊 **Advanced Analytics:** Detailed statistics and reporting dashboards
* 🔄 **Recurring Donations:** Automated periodic donation functionality
* 🌍 **Multi-token Support:** Accept other Stacks-based tokens (SIP-010)
* 🤝 **Multi-sig Withdrawals:** Require multiple signatures for fund withdrawals
* 📧 **Notification System:** Alert systems for new donations and milestones
* 🎨 **Custom Branding:** Personalized donation pages and interfaces

---

## 🔧 Technical Implementation

### Smart Contract Architecture:
- **Language:** Clarity (Stacks blockchain)
- **Storage:** On-chain data maps for donor tracking
- **Security:** Owner-only withdrawal controls
- **Events:** Comprehensive logging for all actions

### Data Structure:
```clarity
;; Global state
total-donations: uint          ;; Running total of all donations
contract-owner: principal      ;; Address authorized to withdraw

;; Donor mapping
donations: principal -> uint   ;; Maps donor address to total contributed
```

---

## 🤝 Contributing

This donation contract serves as a foundation for transparent fundraising. Developers are encouraged to:

- **Fork and Customize:** Adapt for specific use cases and organizations
- **Add Features:** Implement campaign goals, time limits, or multi-sig controls
- **Build Interfaces:** Create user-friendly frontends for donors and organizers
- **Security Reviews:** Audit code and propose security improvements
- **Documentation:** Help improve guides and tutorials

---

## ⚠️ Important Considerations

### For Organizers:
- **Legal Compliance:** Ensure fundraising complies with local regulations
- **Tax Implications:** Consider tax obligations for received donations
- **Fund Management:** Plan for secure storage and allocation of withdrawn funds
- **Communication:** Keep donors informed about fund usage and impact

### For Donors:
- **Irreversible Transactions:** Blockchain donations cannot be reversed
- **Research Recipients:** Verify legitimacy of fundraising efforts
- **Network Fees:** Small STX fees required for donation transactions
- **Privacy:** Donation amounts are publicly visible (linked to wallet address)

---

## 🔧 Deployment Information

**Contract Name:** `donation-box`
**Network:** Stacks Blockchain  
**Language:** Clarity
**Status:** ✅ Active

```
Deployed Contract Address: ST1PMN9CZ1WBSW9DQJ4QKDTJJ2BTAHRCR7R5M9G97
Deployment Transaction: 0xf0958e565c3de790322bc9794161ae47ff7bb5ff93de3645c8e70820578a2b5c
Contract: ST1PMN9CZ1WBSW9DQJ4QKDTJJ2BTAHRCR7R5M9G97.donation
```

---

## 📞 Support & Contact

For questions, support, or collaboration opportunities:
- **Issues:** Report bugs or request features
- **Discussions:** Share use cases and implementation ideas  
- **Community:** Connect with other developers and users

---

<img width="957" height="887" alt="{E3CE07AC-0909-463C-9B36-2B7F16A1382C}" src="https://github.com/user-attachments/assets/09c894d6-3242-4f74-9e0e-c8d7b877dc1e" />
