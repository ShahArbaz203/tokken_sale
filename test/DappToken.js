var DappToken = artifacts.require("../contracts/DappToken");
contract('DappToken', function (accounts) {
    it('sets the total Supply upon deployment', function () {
        return DappToken.deployed().then(function (instance) {
            const tokenInstance = instance;
            // We can only return one thins
            return tokenInstance.totalSupply();
        }).then(function (totalSupply) {
            assert.equal(totalSupply.toNumber(), 1000000, 'sets the total Supply to 1,000,000')
        })

    });
}) 