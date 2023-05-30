// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

interface IERC20 {
    function transfer(address, uint) external returns (bool);

    function transferFrom(address, address, uint) external returns (bool);
}

contract CrowdFund {
    struct Campaign {
        // 活动创建人
        address creator;
        // 目标筹集金额
        uint goal;
        // 已筹集资金
        uint pledged;
        // 开始时间
        uint32 startAt;
        // 结束时间
        uint32 endAt;
        // 是否已领取
        bool claimed;
    }

    IERC20 public immutable token;
    // 活动的id也是根据count来创建
    uint public count;
    mapping(uint => Campaign) public campaigns;
    // campaign id => pledger => amount pledged
    mapping(uint => mapping(address => uint)) public pledgedAmount;

    // 以下事件需要全部被用上！
    event Launch(
        uint id,
        address creator,
        uint goal,
        uint32 startAt,
        uint32 endAt
    );
    event Pledge(uint id, address caller, uint amount);
    event Unpledge(uint id, address caller, uint amount);
    event Claim(uint id);
    event Refund(uint id, address caller, uint amount);

    constructor(address _token) {
        token = IERC20(_token);
    }

    function launch(uint _goal, uint32 _startAt, uint32 _endAt) external {
        require(_startAt >= block.timestamp, "start at < now");
        require(_endAt >= _startAt, "end at < start at");
        require(_endAt <= _startAt + 20 minutes, "end at > max duration"); // 最长活动时间为20分钟

        // 补全
    }

    function pledge(uint _id, uint _amount) external {
        Campaign storage campaign = campaigns[_id];
        require(block.timestamp >= campaign.startAt, "not started");
        require(block.timestamp <= campaign.endAt, "ended");

        // 补全
    }

    function unpledge(uint _id, uint _amount) external {
        // 补全
    }

    function claim(uint _id) external {
        // 补全
        require(campaign.creator == msg.sender, "not creator");
        require(block.timestamp > campaign.endAt, "not ended");
        require(campaign.pledged >= campaign.goal, "pledged < goal");
        require(!campaign.claimed, "claimed");

        // 补全
    }

    function refund(uint _id) external {
        // 补全
        require(block.timestamp > campaign.endAt, "not ended");
        require(campaign.pledged < campaign.goal, "pledged >= goal");

        // 补全
    }
}
