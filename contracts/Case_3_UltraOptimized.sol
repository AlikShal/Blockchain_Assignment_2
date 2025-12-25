// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract Case3 {
    int256[] public arr;

    function pushUltraOptimized(uint256 m) external {
        for (uint256 i = 0; i < m; ) {
            arr.push(int(i));
            unchecked { ++i; }
        }
    }
}