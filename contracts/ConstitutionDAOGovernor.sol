// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/governance/extensions/GovernorTimelockControl.sol";
import "@openzeppelin/contracts/governance/extensions/GovernorSettings.sol";
import "@openzeppelin/contracts/governance/extensions/GovernorCountingSimple.sol";
import "@openzeppelin/contracts/governance/extensions/GovernorVotesQuorumFraction.sol";

contract ConstitutionDAOGovernor is
  GovernorSettings,
  GovernorTimelockControl,
  GovernorVotesQuorumFraction,
  GovernorCountingSimple
{
  constructor(
    string memory name_,
    ERC20Votes token_,
    TimelockController timelock_
  )
    Governor(name_)
    GovernorTimelockControl(timelock_)
    GovernorSettings(1, 45818, 0) // 1 block, 1 week, 0
    GovernorVotes(token_)
    GovernorVotesQuorumFraction(100) // 1%
  {}

  function supportsInterface(bytes4 interfaceId)
    public
    view
    virtual
    override(Governor, GovernorTimelockControl)
    returns (bool)
  {
    return super.supportsInterface(interfaceId);
  }

  function quorum(uint256 blockNumber)
    public
    view
    override(IGovernor, GovernorVotesQuorumFraction)
    returns (uint256)
  {
    return super.quorum(blockNumber);
  }

  function cancel(
    address[] memory targets,
    uint256[] memory values,
    bytes[] memory calldatas,
    bytes32 descriptionHash
  ) public returns (uint256 proposalId) {
    return _cancel(targets, values, calldatas, descriptionHash);
  }

  /**
   * Overriding nightmare
   */
  function state(uint256 proposalId)
    public
    view
    virtual
    override(Governor, GovernorTimelockControl)
    returns (ProposalState)
  {
    return super.state(proposalId);
  }

  function proposalThreshold()
    public
    view
    override(Governor, GovernorSettings)
    returns (uint256)
  {
    return super.proposalThreshold();
  }

  function _execute(
    uint256 proposalId,
    address[] memory targets,
    uint256[] memory values,
    bytes[] memory calldatas,
    bytes32 descriptionHash
  ) internal virtual override(Governor, GovernorTimelockControl) {
    super._execute(proposalId, targets, values, calldatas, descriptionHash);
  }

  function _cancel(
    address[] memory targets,
    uint256[] memory values,
    bytes[] memory calldatas,
    bytes32 descriptionHash
  )
    internal
    virtual
    override(Governor, GovernorTimelockControl)
    returns (uint256 proposalId)
  {
    return super._cancel(targets, values, calldatas, descriptionHash);
  }

  function getVotes(address account, uint256 blockNumber)
    public
    view
    virtual
    override(IGovernor, GovernorVotes)
    returns (uint256)
  {
    return super.getVotes(account, blockNumber);
  }

  function _executor()
    internal
    view
    virtual
    override(Governor, GovernorTimelockControl)
    returns (address)
  {
    return super._executor();
  }
}