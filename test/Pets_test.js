
const Pets = artifacts.require('./Pets.sol');

contract('Pets', function (accounts) {
    const creator = accounts[0];
    
    beforeEach(async function () {
        this.pets = await Pets.new();
    });
    
    it('creator is owner', async function () {
        const owner = await this.pets.owner();
        
        assert.equal(owner, creator);
    });
});
