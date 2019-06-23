pragma solidity >=0.4.21 <0.6.0;

contract Pets {
    address public owner;    
    
    struct Pet {
        uint genes;
        uint generation;
    }
    
    Pet[] pets;
    address[] public petOwners;
    
    constructor(uint _genes) public {
        owner = msg.sender;
        pets.push(Pet(_genes, 0));
        petOwners.push(msg.sender);
    }
    
    function getPet(uint id) public view returns (uint genes, uint generation) {
        Pet storage pet = pets[id];
        
        return (pet.genes, pet.generation);
    }
    
    function noPets() public view returns (uint size) {
        return pets.length;
    }
}
