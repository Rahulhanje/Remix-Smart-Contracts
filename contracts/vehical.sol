// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract vehical{
    string brand;

    constructor(string memory _brand){
        brand=_brand;
    }
    
    function desc() public pure virtual returns(string memory){
        return "This is vehical";
    }

}