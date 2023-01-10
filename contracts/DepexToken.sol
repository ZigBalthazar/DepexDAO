// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";
contract DepexToken is ERC20Votes{

    uint256 constant MAXSUPPLY = 1_000_000_000_000_000_000_000_000;

    constructor() ERC20("DEPEX","DPX") ERC20Permit("DEPEX"){
        _mint(msg.sender, MAXSUPPLY);
    }

}