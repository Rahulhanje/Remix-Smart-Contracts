// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract calculator{
    uint a;
    constructor(uint b){
        a=b;
    }
    function add(uint c)public {
        a+=c;
    }
    function sub(uint c)public {
        a-=c;
    }
    function mul(uint c)public {
        a*=c;
    }
    function div(uint c)public {
        require(c>0,"Divider cant be zero");
        a/=c;
    }
    function getval()public  view returns(uint){
        return a;
    }

}