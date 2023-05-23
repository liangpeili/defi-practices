// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

// 此处补全

contract CollateralStableCoin is ERC20 {
    using SafeMath for uint256;

    IERC20 public collateralToken; // 要抵押的币
    PriceFeed public priceFeed; // 价格预言机
    uint256 public amountOfCollateralToken; // 抵押币的总量
    uint256 public constant COLLATERAL_RATIO_PRECISION = 1e18;

    constructor(
        address _collateralToken,
        address _priceFeed
    ) ERC20("DAI", "DAI") {
        // 此处补全
    }

    function getCollateralPrice() public view returns (uint256) {
        // 此处补全
    }

    function calculateCollateralAmount(
        uint256 _stablecoinAmount
    ) public view returns (uint256) {
        // 150% 超额抵押
        // 此处补全
    }

    function mint(uint256 _stablecoinAmount) external {
        // 此处补全
    }

    function burn(uint256 _stablecoinAmount) external {
        // 此处补全
    }
}
