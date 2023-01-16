//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

contract Token{
    string public name="BlockToken";
    string public symbol="BT";
    uint public totalSupply=1000;

    address public owner;
    mapping(address=>uint) balances;
    constructor(){
        owner=msg.sender;
        balances[owner] = 1000;
    }
    function transfer(address to, uint amt)external
    {
        balances[msg.sender] -= amt;
        balances[to] += amt;
    }
    function getBalance(address acc)external view returns(uint)
    {
        return balances[acc];
    }
}