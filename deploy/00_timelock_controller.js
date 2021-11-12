const { _timelock } = require("../config");
const { args } = _timelock;

module.exports = async ({ getNamedAccounts, deployments }) => {
  const { deploy } = deployments;
  const { deployer } = await getNamedAccounts();

  await deploy("TimelockController", {
    from: deployer,
    args: [args.MIN_DELAY, args.PROPOSERS, args.EXECUTORS],
    log: true,
  });
};
module.exports.tags = ["TimelockController"];
