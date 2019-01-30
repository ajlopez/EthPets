pragma solidity ^0.4.24;

contract Pets {
    address public owner;
    
    constructor() public {
        owner = msg.sender;
    }
}
