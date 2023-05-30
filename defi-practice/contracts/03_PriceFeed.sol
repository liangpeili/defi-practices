// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PriceFeed {
    uint256 price;

    constructor() {}

    /**
     * Returns the latest price.
     */
    // 抵押品的价格，比如1 LPL = 2 USD
    function getLatestPrice() public view returns (uint256) {
        return price;
    }

    function changePrice(uint256 _price) public returns (uint256) {
        price = _price;
        return price;
    }
}
