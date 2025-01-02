// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract willContract{
   string public name="RahulCoin";
   uint startTime;
   uint tenYears;
   uint public  lastVisited;
   address Owner;
   address public recipient;
   constructor(address _recipient){
    tenYears=10;
    startTime=block.timestamp;
    lastVisited=block.timestamp;
    Owner=msg.sender;
    recipient=_recipient;
   } 
   modifier onlyOwner(){
    require(msg.sender==Owner);
    _;
   }
    modifier onlyrecipient(){
    require(msg.sender==recipient);
    _;
   }
   function deposti()public payable onlyOwner {
      lastVisited=block.timestamp;
   }

    function ping()public payable onlyOwner {
      lastVisited=block.timestamp;
   }
   function claim()public onlyrecipient{
    require(lastVisited<block.timestamp-tenYears);
    payable (recipient).transfer(address(this).balance);
   }

}