// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PriceFeed {
    constructor() {}

    /**
     * Returns the latest price.
     */
    function getLatestPrice() public pure returns (int price) {
        return 2 * 1e18;
    }
}
