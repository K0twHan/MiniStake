// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;


contract MiniStake {

    address private owner;
    mapping(address => uint) private amount;
    mapping(address => uint) private dates;

    constructor() {
        owner = msg.sender;
    }

    modifier Time(address _addr)
     {
       require(block.timestamp >= dates[_addr] + 30 days, "30 gun dolmadi");
        _;
     }

    function miniStake() public payable {
        require(msg.value> 0);
        dates[msg.sender] = block.timestamp;
        amount[msg.sender] = msg.value;
    }

    function payBack() public Time(msg.sender) {
        uint stakeAmount = amount[msg.sender]; // Yatırılan miktarı al
        require(stakeAmount > 0, "Stake edilmis miktar bulunamadi");

        
        delete dates[msg.sender];
        delete  dates[msg.sender];

        // Kullanıcıya Ether geri öde
        payable(msg.sender).transfer(stakeAmount);
    }


    function OwnerPayBack(address _addr) public {
        require(msg.sender == owner);
        uint stakeAmount = amount[_addr];
        payable(_addr).transfer(stakeAmount);
    }

    function TransferOwnership(address _addr) public {
        require(msg.sender == owner,"Sahip sen degilsin");
        owner = _addr;

    }
    }
      
