//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

contract FallbackReceive
{
    string  public called=""; 
    uint public  amount=0;
    bytes public data;
    uint public balance=0;
    uint public sender_balance=0;
    uint public receiver_balance=0;
    receive() external payable
    {
        called="receive function";
         amount=msg.value;
         balance = address(this).balance;
         receiver_balance=address(msg.sender).balance;
      
    }
    fallback() external payable
    {
        called="fallback function";
         amount=msg.value;
         data = msg.data;
         balance = address(this).balance;
          sender_balance=(msg.sender).balance;
          receiver_balance=address(msg.sender).balance;
    }
}