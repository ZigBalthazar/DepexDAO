// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";

contract DepexToken is ERC20Votes {
    uint256 constant MAXSUPPLY = 1_000_000_000_000_000_000_000_000;

    constructor() ERC20("DEPEX", "DPX") ERC20Permit("DEPEX") {
        _mint(msg.sender, MAXSUPPLY);
    }

    function _afterTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal override(ERC20Votes) {
        super._afterTokenTransfer(from, to, amount);
    }

    function _mint(address to, uint256 amount) internal override(ERC20Votes) {
        super._mint(to, amount);
    }

    function _burn(address account, uint256 amount)
        internal
        override(ERC20Votes)
    {
        super._burn(account, amount);
    }
}
