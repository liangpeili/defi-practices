// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

import "./IERC20.sol";

contract CSAMM {
    IERC20 immutable token0;
    IERC20 immutable token1;

    uint public reserve0;
    uint public reserve1;

    uint public totalSupply;
    mapping(address => uint) public balanceOf;

    constructor(address _token0, address _token1) {
        token0 = IERC20(_token0);
        token1 = IERC20(_token1);
    }

    function _mint(address _to, uint _amount) private {}

    function _burn(address _from, uint _amount) private {}

    function swap(
        address _tokenIn,
        uint _amountIn
    ) external returns (uint amountOut) {}

    function addLiquidity(
        uint _amount0,
        uint _amount1
    ) external returns (uint shares) {}

    function removeLiquidity(
        uint _shares
    ) external returns (uint d0, uint d1) {}

    function _update(uint _res0, uint _res1) private {
        reserve0 = _res0;
        reserve1 = _res1;
    }
}
