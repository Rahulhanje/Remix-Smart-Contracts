// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./vehical.sol";

contract car is vehical{
    uint numberOfDoors;

    constructor(uint numofDoors,string memory _brand) vehical(_brand){
        numberOfDoors=numofDoors;
    }

    function descs() public view  returns(string memory){
        return brand;
    }
    function doors()public  view  returns (uint ){
        return numberOfDoors;
    }
    
} 