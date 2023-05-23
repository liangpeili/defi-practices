// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.12;

import "@openzeppelin/contracts/interfaces/IERC20.sol";

contract Vault {
  IERC20 public immutable token;

  uint public totalSupply;
  mapping(address => uint) public balanceOf;

  constructor(address _token) {
    token = IERC20(_token);
  }

  function _mint(address _to, uint _amount) private {

  }

  function _burn(address _from, uint _amount) private {

  }

  function deposit(uint _amount) external {

  }

  function withdraw(uint _shares) external {

  }


}