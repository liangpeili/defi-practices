//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./04_Exchange.sol";

contract Factory {
    address public USDT;
    mapping(address => address) public exchanges;

    constructor(address usdt) {
        USDT = usdt;
    }

    /**
     * Create and deploy a new exchange
     *
     * @param tokenAddress address: Token address for which the factory will create an exchange
     * @return exchangeAddress address: Token/USDT Exchange address
     * @notice a similar exchange must not exist
     */
    function createExchange(
        address tokenAddress
    ) public returns (address exchangeAddress) {
        require(tokenAddress != address(0), "Token address not valid");
        require(
            exchanges[tokenAddress] == address(0),
            "Exchange already exists"
        );

        Exchange exchange = new Exchange(tokenAddress, USDT);
        exchanges[tokenAddress] = address(exchange);

        exchangeAddress = address(exchange);
    }

    /**
     * Find an exchange
     *
     * @param tokenAddress address: Token address for which the factory will create an exchange
     * @return exchangeAddress address: Token/USDT Exchange address
     */
    function getExchange(
        address tokenAddress
    ) public view returns (address exchangeAddress) {
        exchangeAddress = exchanges[tokenAddress];
        require(exchangeAddress != address(0), "Exchange does exists");
    }
}
