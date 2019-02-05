pragma solidity ^0.4.24;

contract Pets {
    address public owner;
    
    struct Pet {
        uint genes;
        uint generation;
    }
    
    Pet[] pets;
  
    constructor(uint _genes) public {
        owner = msg.sender;
        pets.push(Pet(_genes, 0));
    }
    
    function getPet(uint id) public view returns (uint genes, uint generation) {
        Pet storage pet = pets[id];
        
        return (pet.genes, pet.generation);
    }
    
    function noPets() public view returns (uint size) {
        return pets.length;
    }
}
