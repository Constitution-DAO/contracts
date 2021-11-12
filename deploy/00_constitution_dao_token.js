module.exports = async ({ getNamedAccounts, deployments }) => {
  const { deploy } = deployments;
  const { deployer } = await getNamedAccounts();

  await deploy("ConstitutionDAOToken", {
    from: deployer,
    log: true,
  });
};
module.exports.tags = ["ConstitutionDAOToken"];
