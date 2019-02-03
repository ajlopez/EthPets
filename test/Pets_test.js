
const Pets = artifacts.require('./Pets.sol');

contract('Pets', function (accounts) {
    const creator = accounts[0];
    
    beforeEach(async function () {
        this.pets = await Pets.new(1);
    });
    
    it('creator is owner', async function () {
        const owner = await this.pets.owner();
        
        assert.equal(owner, creator);
    });
    
    it('initial pet', async function () {
        const nopets = await this.pets.noPets();
        assert.equal(nopets, 1);
        
        const genes = await this.pets.getPet(0);
        assert.equal(genes, 1);
    });
});
