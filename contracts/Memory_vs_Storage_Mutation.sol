// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MemoryVsStorage {

    uint256 public storedValue = 10;

    function modifyUsingMemory() public view returns (uint256) {
        uint256 temp = storedValue;
        temp = 100;
        return temp;
    }

    function getStoredValue() public view returns (uint256) {
        return storedValue;
    }
}
