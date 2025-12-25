// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract Case2 {
    uint256[] public arr;

    function pushOptimized(uint256 y) external {
        arr.push(y);
    }
}
