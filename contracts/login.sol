// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract login{

    mapping (address=>string) public names;
    constructor(string memory name){
        names[msg.sender]=name;
    }
    function getName(address add)public view returns(string memory){
        return names[add];
    }

}