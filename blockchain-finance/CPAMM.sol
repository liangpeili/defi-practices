// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "./IERC20.sol";

contract CPAMM {
    IERC20 public immutable token0;
    IERC20 public immutable token1;

    uint public reserve0;
    uint public reserve1;

    uint public totalSupply;
    mapping(address => uint) public balanceOf;

    constructor(address _token0, address _token1) {
        token0 = IERC20(_token0);
        token1 = IERC20(_token1);
    }

    function _mint(address _to, uint _amount) private {
        balanceOf[_to] += _amount;
        totalSupply += _amount;
    }

    function _burn(address _from, uint _amount) private {
        balanceOf[_from] -= _amount;
        totalSupply -= _amount;
    }

    function _sqrt(uint y) internal pure returns (uint z) {
        if (y > 3) {
            z = y;
            uint x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }

    function _update(uint _reserve0, uint _reserve1) private {
        reserve0 = _reserve0;
        reserve1 = _reserve1;
    }

    function _min(uint _x, uint _y) private pure returns (uint) {
        return _x > _y ? _y : _x;
    }

    function swap(
        address _tokenIn,
        uint _amountIn
    ) external returns (uint amountOut) {
        require(_amountIn > 0, "Invalid Amount");
        require(
            _tokenIn == address(token0) || _tokenIn == address(token1),
            "Invalid token"
        );

        bool isToken0 = _tokenIn == address(token0);
        (IERC20 tokenIn, IERC20 tokenOut) = isToken0
            ? (token0, token1)
            : (token1, token0);
        (uint reserveIn, uint reserveOut) = isToken0
            ? (reserve0, reserve1)
            : (reserve1, reserve0);
        //转币到合约

        // 计算输出的数量

        // 转币给用户

        // 更新自己的余额表
    }

    function addLiquidity(
        uint _amount0,
        uint _amount1
    ) external returns (uint shares) {
        require(_amount0 > 0 && _amount1 > 0, "Invalid amount");
        // 把token0 和 token1 转入到合约

        // 计算并mint share 给用户

        // 更新余额表
    }

    function removeLiquidity(
        uint _shares
    ) external returns (uint amount0, uint amount1) {
        require(_shares > 0, "Invalid shares");
        // 计算dx 和dy的数量

        // 销毁用户的share

        // 把两个币转回给用户

        // 更新余额表
    }
}
