//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

contract ModifierDemo
{
    modifier check(uint x)
    {
        if(x>5)
        _;
    }

    uint public num;
    function update(uint x)public check(x)
    {
        num=num+x;
    }
}