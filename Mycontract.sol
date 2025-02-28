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
