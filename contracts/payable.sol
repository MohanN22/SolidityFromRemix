//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

contract Payable
{
    address payable public owner;

    constructor() payable
    {
        owner= payable(msg.sender);
    }
    // This function can receive ether
    function deposit() public payable{}
    // This function cannot accept ethers
    function nonPayable() public{}

    function withdraw() public
    {
        uint amount = address(this).balance;
        (bool success,) = owner.call{value:amount}("amount withdrawn from smart contract");
        require(success, "Failed to receive ether");
    }
    function transfer(address payable _to,uint _amount) public 
    {
        //(bool success,)=_to.call{value:_amount}("Ether Transferred");
        //Directly sending ethers
        (bool success,)=_to.call{value:_amount*(10**18)}("Ether Transferred");
        require(success,"Failed to send ether to address");
    }
}