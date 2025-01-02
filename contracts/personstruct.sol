// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract personsdetails{
    struct Person{
        string name;
        uint age;
        address add;
    }
    Person public p1;
    function setperson(string memory name,uint age) public  {
        p1.name=name;
        p1.age=age;
        p1.add=msg.sender;
    }
    function getperson()public view returns(string memory name,uint age,address){
        return( p1.name,p1.age,p1.add);
    }
}