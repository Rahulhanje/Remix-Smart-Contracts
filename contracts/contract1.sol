// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract message{
     string public  messages;
     
     constructor (string memory _msg) {
           messages=_msg;
     }
     function getmessage() public view returns(string memory){
        return messages;
     }
}
