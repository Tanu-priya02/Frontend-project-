# MyContract

MyContract is a simple Solidity smart contract that demonstrates basic operations on a single state variable. This contract allows setting, getting, and incrementing a value.

## Table of Contents

- [MyContract](#mycontract)
  - [Table of Contents](#table-of-contents)
  - [Overview](#overview)
  - [Installation](#installation)
  - [Usage](#usage)
    - [Deploying the Contract](#deploying-the-contract)
    - [Interacting with the Contract](#interacting-with-the-contract)
  - [License](#license)

## Overview

This contract includes three main functions:

1. `setValue(uint256 _value)`: Sets the state variable `value` to the specified `_value`.
2. `getValue()`: Returns the current value of the state variable `value`.
3. `incrementValue()`: Increments the value of the state variable `value` by 1.

## Installation

To use this contract, you need to have the following tools installed:

- [Node.js](https://nodejs.org/)
- [npm](https://www.npmjs.com/)
- [Hardhat](https://hardhat.org/)

Follow these steps to set up your environment:

1. Install Hardhat:

    ```bash
    npm install --save-dev hardhat
    ```

2. Initialize a new Hardhat project:

    ```bash
    npx hardhat
    ```

3. Create a new file named `MyContract.sol` in the `contracts` directory and add the contract code:

    ```solidity
    // SPDX-License-Identifier: MIT
    pragma solidity ^0.8.0;

    contract MyContract {
        uint256 private value;

        // Function to set the value
        function setValue(uint256 _value) public {
            value = _value;
        }

        // Function to get the value
        function getValue() public view returns (uint256) {
            return value;
        }

        // Function to increment the value
        function incrementValue() public {
            value += 1;
        }
    }
    ```

4. Compile the contract:

    ```bash
    npx hardhat compile
    ```

## Usage

### Deploying the Contract

To deploy the contract, you can use the Hardhat console or write a deployment script. Here's an example using the Hardhat console:

1. Start the Hardhat node:

    ```bash
    npx hardhat node
    ```

2. Open the Hardhat console in a new terminal:

    ```bash
    npx hardhat console --network localhost
    ```

3. Deploy the contract:

    ```javascript
    const MyContract = await ethers.getContractFactory("MyContract");
    const myContract = await MyContract.deploy();
    await myContract.deployed();
    console.log("Contract deployed to:", myContract.address);
    ```

### Interacting with the Contract

Once deployed, you can interact with the contract using the Hardhat console or a script. Here are some examples:

- Setting the value:

    ```javascript
    await myContract.setValue(42);
    ```

- Getting the value:

    ```javascript
    const value = await myContract.getValue();
    console.log("Current value:", value.toString());
    ```

- Incrementing the value:

    ```javascript
    await myContract.incrementValue();
    const newValue = await myContract.getValue();
    console.log("New value:", newValue.toString());
    ```
## Author
Tanupriya
## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
