// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract HelloWorld {
    string private message;

    event MessageUpdated(string oldMessage, string newMessage); // event emitted when message changes

    constructor(string memory initialMessage) {
        message = initialMessage;
    }

    function getMessage() public view returns (string memory) {  // it is public getterto view function
        return message;
    }

    function setMessage(string memory newMessage) public { //public function that updates the message (state-changing)
        string memory oldMessage = message;

        message = newMessage;

        // Call private function
        _logUpdate(oldMessage, newMessage);

        emit MessageUpdated(oldMessage, newMessage);
    }

    function _logUpdate(string memory, string memory) private pure {
        // Used only to demonstrate private visibility
    }
}
