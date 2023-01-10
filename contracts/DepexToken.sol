// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract DepexToken is ERC20{

    uint256 constant MAXSUPPLY = 1000000000000000000000000;

    constructor() ERC20("DEPEX","DPX"){
        _mint(msg.sender, MAXSUPPLY);
    }

}