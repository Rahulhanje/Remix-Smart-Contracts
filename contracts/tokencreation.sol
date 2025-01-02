// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract rahulCoin{
    address public owner;
    uint public totalSupply;
    mapping  (address=>uint) public  balances;

    constructor(){
        owner=msg.sender;
    }

    modifier  OnlyOwner {
        require(msg.sender==owner);
        _;
    }
    //mint function
     function mint(uint _totalCoins)public  OnlyOwner {
        balances[owner]=_totalCoins;
        totalSupply=_totalCoins;
     }

    //minto function
    function mintTo(uint tokens,address add)public   OnlyOwner payable{
        balances[add]+=tokens;
        balances[owner]=balances[owner]-tokens;
    }
    //both callabale by owner

    //burn tokens
    function burn(uint burnAmount)public {
        uint balance=balances[msg.sender];
        require(balance>=burnAmount);
        balances[msg.sender]-=burnAmount;
        totalSupply-=burnAmount;
            }

    
    //tranfer
    function sendTokens(uint tokens,address to)public payable {
         uint existingBalance=balances[msg.sender];
         require(existingBalance>=tokens);
         balances[to]=tokens;
         balances[msg.sender]=balances[msg.sender]-tokens;
    }
}