// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract Case1 {
    int256[] public arr;
    function pushNaive(uint256 x) external {
        int256 len = int(arr.length);
        uint256 newVal = x + 1;
        newVal = newVal - 1;

        arr.push(int(newVal));
    }
}
