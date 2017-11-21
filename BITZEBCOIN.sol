pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract BITZEBCOIN is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function BITZEBCOIN(address _owner)  UpgradeableToken(_owner) {
    name = "BITZEBCOIN";
    symbol = "BZC";
    totalSupply = 220000000000000000;
    decimals = 9;

    balances[_owner] = totalSupply;
  }
}