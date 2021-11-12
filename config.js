const ZERO_ADDRESS = "0x0000000000000000000000000000000000000000";

module.exports = {
  _timelock: {
    CONTRACT_NAME: "TimelockController",
    args: {
      MIN_DELAY: "45818",
      PROPOSERS: [],
      EXECUTORS: [ZERO_ADDRESS],
    },
  },
  _token: {
    CONTRACT_NAME: "ConstitutionDAOToken",
    settings: { TRANSFER_OWNERSHIP_TIMELOCK: false },
  },
  _governor: {
    CONTRACT_NAME: "ConstitutionDAOGovernor",
    settings: { REVOKE_ADMIN_ROLE_DEPLOYER: false },
    args: {
      GOVERNOR_NAME: "ConstitutionDAO Governor",
      //   GOVERNANCE_TOKEN,
      //   TIMELOCK_ADDRESS,
    },
  },
  ZERO_ADDRESS,
};
