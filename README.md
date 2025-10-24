# Ticketify (!!! NOT FINISHED)

**Ticketify** is a decentralized ticketing platform built for club events, designed to prevent ticket scalping, fraud, and price manipulation by leveraging blockchain technology. While the project is a work-in-progress and the frontend and backend are not fully merged yet, the vision and technical implementation highlight the potential of decentralized ticketing systems.

---

## 🂌 Project Idea

Ticketify was inspired by real-world ticketing problems, such as the **Travis Scott Circus Maximus concert in India**, where tickets were resold at exorbitant prices and many users fell victim to scams. Traditional centralized ticketing platforms often fail to prevent:

* Bulk ticket buying by scalpers
* Fraudulent reselling
* Price manipulation

**Ticketify's vision:**

* Use **decentralization** to make ticket sales transparent and fair
* Ensure that tickets are **non-fungible and verifiable** on the blockchain
* Allow **direct user-to-user transfer** without intermediaries
* Prevent automated scalping and scalping bots

---

## ⚡ Features (Planned / Implemented)

* **Ticket Creation:** Admins can create tickets for events.
* **User Purchase:** Users can purchase tickets using a secure blockchain transaction.
* **Ownership Verification:** Tickets are stored on the blockchain, making ownership transparent.
* **Immutable Records:** Every transaction is recorded on the **Internet Computer (ICP)** blockchain.
* **Decentralization Benefits:**

  * Stops reselling scams and bots
  * Transparent pricing
  * Peer-to-peer transfers without intermediaries

---

## 🛠️ Tech Stack

* **Frontend:** React.js

  * Built to allow users to view events and purchase tickets
  * Responsive UI with planned wallet integration

* **Blockchain:** Internet Computer (ICP)

  * Chosen for its **fast, scalable, and fully decentralized smart contracts** (called **canisters**)

* **Smart Contracts (Planned Implementation):**

  * Each event would have its own canister to manage ticket minting and sales
  * Tickets would be issued as **unique assets** tied to user identities
  * Canisters would enforce rules like **purchase limits**, **anti-bot checks**, and **resale restrictions**
  * Smart contracts ensure **tamper-proof transactions** and **transparent audit trails**

---

## 💡 Why ICP & Motoko?

* **ICP Advantages:**

  * Truly decentralized execution (no central servers)
  * Fast transaction finality compared to traditional blockchains
  * Scalable for high-volume ticketing events

* **Motoko Advantages:**

  * Native language for ICP smart contracts
  * Designed for **secure, scalable, and efficient blockchain applications**
  * Simplifies writing and managing canisters (smart contracts)

---

## 📈 Potential Impact

By decentralizing ticket sales:

* **Fair Pricing:** Prices can be programmatically controlled to avoid scalping
* **Transparency:** Users can verify ticket authenticity directly on-chain
* **Security:** Fraudulent transactions are nearly impossible
* **Community Empowerment:** Reduces dependence on centralized ticketing platforms

---

## 🎟️ Project Status

* Frontend UI is fully built using React
* Backend smart contracts written in Motoko for ICP canisters
* **Integration pending:** Frontend wallet and backend canisters communication
* Demo-ready for UI, with backend interactions planned

---

## 🏋️ Planned Future Features

* Wallet integration for ICP
* NFT-based ticket issuance
* Dynamic resale platform with smart contract controls
* Event analytics dashboard

---

## 🖼️ Screenshots / Demo
---

### Dashboard

<img width="1447" height="829" alt="dashboard" src="https://github.com/user-attachments/assets/777cf298-45b0-449b-b221-73449f488a30" />

---

### My Collections

<img width="1448" height="810" alt="MYCollections" src="https://github.com/user-attachments/assets/a9b58456-20c6-4cfc-94ee-66c348cb1c32" />

---

### Login

<img width="1453" height="816" alt="Login" src="https://github.com/user-attachments/assets/116fac8f-f387-4bb9-8684-3492319c88b7" />

---

### Organizer Dashboard


<img width="1455" height="820" alt="Organizer Dashboard" src="https://github.com/user-attachments/assets/5ea70051-7024-49d1-b777-ddb5222f9e08" />


---
# Check your Balance

1. Find out your principal id:

```
dfx identity get-principal
```

2. Save it somewhere.

e.g. My principal id is: i647v-rtmuu-wp6b5-hwsc2-tdq3n-6ejdr-5nnh4-mk4x7-6i2ab-pxenn-aqe


3. Format and store it in a command line variable:
```
OWNER_PUBLIC_KEY="principal \"$( \dfx identity get-principal )\""
```

4. Check that step 3 worked by printing it out:
```
echo $OWNER_PUBLIC_KEY
```

5. Check the owner's balance:
```
dfx canister call token balanceOf "( $OWNER_PUBLIC_KEY )"
```

# Charge the Canister


1. Check canister ID:
```
dfx canister id token
```

2. Save canister ID into a command line variable:
```
CANISTER_PUBLIC_KEY="principal \"$( \dfx canister id token )\""
```

3. Check canister ID has been successfully saved:
```
echo $CANISTER_PUBLIC_KEY
```

4. Transfer half a billion tokens to the canister Principal ID:
```
dfx canister call token transfer "($CANISTER_PUBLIC_KEY, 500_000_000)"
```

# Deploy the Project to the Live IC Network

1. Create and deploy canisters:

```
dfx deploy --network ic
```

2. Check the live canister ID:
```
dfx canister --network ic id token
```

3. Save the live canister ID to a command line variable:
```
LIVE_CANISTER_KEY="principal \"$( \dfx canister --network ic id token )\""
```

4. Check that it worked:
```
echo $LIVE_CANISTER_KEY
```

5. Transfer some tokens to the live canister:
```
dfx canister --network ic call token transfer "($LIVE_CANISTER_KEY, 50_000_000)"
```

6. Get live canister front-end id:
```
dfx canister --network ic id token_assets
```
7. Copy the id from step 6 and add .raw.ic0.app to the end to form a URL.
e.g. zdv65-7qaaa-aaaai-qibdq-cai.raw.ic0.app




**Ticketify** shows the potential of using blockchain to solve real-world ticketing problems. Even though the project is incomplete, it lays the groundwork for fair, transparent, and decentralized ticketing systems.
