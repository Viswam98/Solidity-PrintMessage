const PrintMessage = artifacts.require("PrintMessage");

module.exports = function (deployer) {
    deployer.deploy(PrintMessage,"Hello World");
}