// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
import "@openzeppelin/contracts/access/Ownable.sol";

contract Poll is Ownable {
    // 总提案数
    uint8 public candidates;
    //总票数
    uint public turnout;
    //投票时间
    uint public duration;
    bool public started;
    bool public ended;
    uint public endTime;
    //已投票数
    uint public votedNum;
    //记录投票人投给哪个提案
    mapping(address => uint8) public votedMap;
    //记录每个提案的得票数
    mapping(uint8 => uint) scoreMap;
    //当前最高票提案的索引
    uint8 public highestCandidate;
    //当前最高票得票数
    uint public highestScore;
    event Started();
    event Ended();

    constructor(uint8 _candidates, uint _turnout, uint _duration) {
        candidates = _candidates;
        turnout = _turnout;
        duration = _duration;
    }

    function start() external onlyOwner {}

    function end() public {}

    function vote(uint8 candidateIndex) external {}

    function getResult() external view returns (uint8) {
        require(ended);
        return highestCandidate;
    }
}
