//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

contract P1
{
    function show1()public virtual pure returns(string memory)
    {
        return "in P1 show1";
    }
}
contract P2 
{
    function show2()public pure returns(string memory)
    {
        return "in P2 show2";
    }
    function show()public virtual pure returns (string memory)
    {
        return "in P2 show1";
    }
}
contract P3 is P1,P2{
    function show3()public pure returns(string memory)
    {
        return "in P3 show3";
    }
    function show1()public override pure returns (string memory)
    {
        return "in P3 show1";
    }
    
}