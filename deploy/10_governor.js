const config = require("../config");
const { args, settings } = config._governor;

module.exports = async ({ getNamedAccounts, deployments }) => {
  const { deploy } = deployments;
  const { deployer } = await getNamedAccounts();
  const constToken = await ethers.getContract("ConstitutionDAOToken");
  const timelockController = await ethers.getContract("TimelockController");

  await deploy("ConstitutionDAOGovernor", {
    from: deployer,
    args: [args.GOVERNOR_NAME, constToken.address, timelockController.address],
    log: true,
  });

  const governor = await ethers.getContract("ConstitutionDAOGovernor");

  await (
    await timelockController.grantRole(
      await timelockController.PROPOSER_ROLE(),
      governor.address
    )
  ).wait();

  if (settings.REVOKE_ADMIN_ROLE_DEPLOYER) {
    await (
      await timelockController.revokeRole(
        await timelockController.TIMELOCK_ADMIN_ROLE(),
        deployer
      )
    ).wait();
  }
};
module.exports.tags = ["ConstitutionDAOGovernor"];
module.exports.dependencies = ["ConstitutionDAOToken", "TimelockController"];
