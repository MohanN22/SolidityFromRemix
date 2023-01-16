//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

contract Computer
{
    function compute()public pure returns(string memory)
    {
        return "computing...";
    }
    function show() public virtual pure returns(string memory)
    {
        return "Just a concept";
    }
}

contract Laptop is Computer
{
    function show() public override pure returns(string memory)
    {
        return "i5,16gb, 1 TB";
    }
}