pragma solidity ^0.4.24;

contract Pets {
    address public owner;
    
    struct Pet {
        uint genes;
    }
    
    Pet[] pets;
  
    constructor(uint _genes) public {
        owner = msg.sender;
        pets.push(Pet(_genes));
    }
    
    function getPet(uint id) public view returns (uint genes) {
        return pets[id].genes;
    }
    
    function noPets() public view returns (uint size) {
        return pets.length;
    }
}
