# RideSharing Smart Contract

This repository contains the RideSharing smart contract, which can be used to process transactions for a ride-sharing application on the Ethereum blockchain.

The RideSharing contract allows users to create and manage ride-sharing requests, as well as handle payments and feedback between drivers and riders.


## Deployment

To deploy the RideSharing contract using Hardhat and the Goerli testnet, follow these steps:

Clone this repository and navigate to the project directory:

```bash
git clone https://github.com/AshiqNoor-S/BidRide/tree/main/Solidity
```

Install the required packages using npm:
```bash
npm install
```

Create a .env file in the root directory of the project and add the following lines:

```bash
PRIVATE_KEY=<YOUR_PRIVATE_KEY>
ETHERSCAN_API=<YOUR_ETHERSCAN_API>
RPC_URL=<RPC_URL_OF_THE_NETWORK>
```
Make sure to replace <YOUR_ETHERSCAN_API>,<RPC_URL> AND <YOUR_PRIVATE_KEY> with your actual private key for the Goerli testnet.

Edit the hardhat.config.js file and add the following code to configure Hardhat for the Goerli testnet:

```bash
require("@nomiclabs/hardhat-waffle");
require("@nomiclabs/hardhat-ethers");

module.exports = {
  networks: {
    goerli: {
      url: RPC_URL,
      accounts: ["PRIVATE_KEY"],
    },
  },
  etherscan: {
        apiKey: {
          goerli: ETHERSCAN_API_KEY
        }
      },
  solidity: {
    version: "0.8.4",
  },
};

```

Run the deployment script using the following command

```bash
npx hardhat run --network goerli Deploy/00-Deploy-uber.js
```

## Testing
To run the tests for the RideSharing contract, use the following command:

```bash
npx hardhat test
```

This will run the test suite for the RideSharing contract and output the results to the console.

## License

This code is released under the MIT License. See LICENSE for details.
