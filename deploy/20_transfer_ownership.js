const { _token } = require("../config");

module.exports = async () => {
  if (_token.settings.TRANSFER_OWNERSHIP_TIMELOCK) {
    const constToken = await ethers.getContract("ConstitutionDAOToken");
    const timelockController = await ethers.getContract("TimelockController");

    await constToken.transferOwnership(timelockController.address);
  }
};
module.exports.dependencies = ["TimelockController"];
module.exports.tags = ["ownership"];
