// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PriceFeed {
    constructor() {}

    /**
     * Returns the latest price.
     */
    // 抵押品的价格，比如1 LPL = 2 USD
    function getLatestPrice() public pure returns (int price) {
        return 2 * 1e18;
    }
}
