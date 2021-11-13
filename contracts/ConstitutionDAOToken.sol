// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";

contract ConstitutionDAOToken is ERC20, Ownable, ERC20Permit, ERC20Votes {
    address constant USDC = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
    bool public acceptingContributions = true;

    event DAOMinted(address to, uint256 amount);
    event DonationRecovered(address token, uint256 amount);
    event USDCContributed(address from, uint256 amount);
    event ContributionsLocked();

    constructor()
        ERC20("ConstitutionDAOToken", "CONST")
        ERC20Permit("ConstitutionDAOToken")
    {
        _mint(msg.sender, 10 * 10**decimals());
        _mint(address(this), 90 * 10**decimals());
    }

    // Allow the DAO to retroactively mint and airdrop tokens to those who donate
    // crypto outside of USDC contributions. Note that USDC contributions are
    // more likely to be used due to their ease of converting to fiat.
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
        emit DAOMinted(to, amount);
    }

    // ConstitutionDAO will retroactively airdrop to all who donate whatever
    // tokens of liquid value. Note that your tokens have an increased chance of
    // being used to bid on the auction if the token is easily liquidatable and
    // of high enough volume to cover the gas to do so.
    function recoverDonation(address token) external {
        uint256 amount = IERC20(token).balanceOf(address(this));
        IERC20(token).transfer(owner(), amount);
        emit DonationRecovered(token, amount);
    }

    // USDC contributions are preferred because of reduced friction to convert
    // to fiat. We need to get money quickly from contract->Sotheby's and
    // nothing is faster than USDC with current CeFi.
    function contributeUSDC(uint256 amount) external {
        require(acceptingContributions, "no longer accepting contributions");

        // draw USDC contribution from sender
        IERC20(USDC).transferFrom(msg.sender, address(this), amount);
        // mint CONST at 1:1 rate with USDC for easy accounting
        // note that decimal counts differ between the tokens so a conversion
        // is required to return the proper amount of CONST tokens.
        _mint(msg.sender, amount * 10**(decimals() - IERC20(USDC).decimals()));
        emit USDCContributed(msg.sender, amount);
    }

    // Once the auction is over (or earlier), the DAO can stop accepting
    // contributions to prevent capital that did not lead to acquiring the
    // constitution from receiving tokens.
    function lockContributions() external onlyOwner {
        acceptingContributions = false;
        emit ContributionsLocked();
    }

    // The following functions are overrides required by Solidity.

    function _afterTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal override(ERC20, ERC20Votes) {
        super._afterTokenTransfer(from, to, amount);
    }

    function _mint(address to, uint256 amount)
        internal
        override(ERC20, ERC20Votes)
    {
        super._mint(to, amount);
    }

    function _burn(address account, uint256 amount)
        internal
        override(ERC20, ERC20Votes)
    {
        super._burn(account, amount);
    }
}
