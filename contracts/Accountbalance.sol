//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

contract Accountbalance
{


     //uint public balance;

     mapping(address=>uint)public balance;
     address public owner;
     constructor(){
         owner=msg.sender;
     }
     
     function setBalance(uint x) public 
     {
         require(msg.sender==owner,"Only owner is allowed to add balance");
         balance[msg.sender] +=x;
     }
     function getBalance() public view returns(uint)
     {
         return balance[msg.sender];
     }
     function setTransfer(address to, uint x) public
     {
        //  if(balance[msg.sender]<x)
        //  {
        //      revert("In sufficient amount");
        //  }
        assert(balance[msg.sender]>x && x>100);
       // require(balance[msg.sender]>x, "InSufficient Balance");
         balance[msg.sender] -=x;
         balance[to] +=x;
     }
}