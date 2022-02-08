// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

contract PrintMessage {
    string public message;
    string[] messages;
    mapping (address => string[]) log;

    constructor(string memory _message){
        message = _message;
        messages.push(message);
        log[msg.sender] = messages;
    }

    function setMessage(string memory _message) external{
        message = _message;
        messages = log[msg.sender];
        messages.push(message);
        log[msg.sender] = messages;
    }

    function getMessage() external view returns(string memory){
        return message;
    }

    function getLog(address addr) external view returns(string[] memory) {
        return log[addr];
    }

}