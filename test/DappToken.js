var DappToken = artifacts.require("../contracts/DappToken");
contract('DappToken', function (accounts) {

    var tokenInstance;

    it('sets the total Supply upon deployment', function () {
        return DappToken.deployed().then(function (instance) {
            tokenInstance = instance;
            // We can only return one thins
            return tokenInstance.totalSupply();
        }).then(async function (totalSupply) {
            // console.log("tokenInstance: ",typeof await tokenInstance.totalSupply())
            assert.equal(totalSupply.toNumber(), 1000000, 'sets the total Supply to 1000000')
            return tokenInstance.balanceOf(accounts[0]);
        }).then(function (adminBalance) {
            assert.equal(adminBalance.toNumber(), 1000000, 'it allocates the initial supply')
        })

    });
}) 