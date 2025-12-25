// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract FunctionVisibility {

    function publicFunc() public pure returns (string memory) {
        internalFunc();
        privateFunc();
        return "public";
    }

    function externalFunc() external pure returns (string memory) {
        return "external";
    }

    function internalFunc() internal pure returns (string memory) {
        privateFunc();
        return "internal";
    }

    function privateFunc() private pure returns (string memory) {
        return "private";
    }

    function testExternalCall() public view returns (string memory) {
        //externalFunc(); not allowed
        return this.externalFunc(); //allowed
    }
}
