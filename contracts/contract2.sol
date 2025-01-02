// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface messagesContract {
    function getmessage() external view returns(string memory); 
}

contract parentcontract{
    address private contractaddress;

    constructor (address add){
        contractaddress=add;
    }
    function getcontractmessage()public view returns(string memory){
       return messagesContract(contractaddress).getmessage();
    }
}