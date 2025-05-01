
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Crowdfunding {
    address public owner;
    uint public goal;
    uint public deadline;
    uint public raisedAmount;

    mapping(address => uint) public contributions;

    constructor(uint _goal, uint _durationInDays) {
        owner = msg.sender;
        goal = _goal;
        deadline = block.timestamp + (_durationInDays * 1 days);
    }

    function contribute() external payable {
        require(block.timestamp < deadline, "Campaign ended");
        require(msg.value > 0, "Contribution must be greater than 0");

        contributions[msg.sender] += msg.value;
        raisedAmount += msg.value;
    }

    function withdraw() external {
        require(msg.sender == owner, "Only owner can withdraw");
        require(block.timestamp >= deadline, "Campaign still active");
        require(raisedAmount >= goal, "Funding goal not met");

        payable(owner).transfer(raisedAmount);
    }

    function getDetails() external view returns (
        address, uint, uint, uint, uint, bool
    ) {
        return (
            owner,
            goal,
            deadline,
            raisedAmount,
            contributions[msg.sender],
            block.timestamp < deadline
        );
    }
}
