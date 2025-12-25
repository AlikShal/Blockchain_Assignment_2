// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract ConstructorInit {

    uint256 public a;
    uint256 public b;

    constructor(uint256 _a, uint256 _b) {
        a = _a;
        b = _b;
    }
}
