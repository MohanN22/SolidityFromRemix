//SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;
contract Counter
{
    
    uint  counter;
    uint public sum;
    uint public sub;

    function inc() public
    {
        counter++;
    }
    function dec() public
    {
        counter--;
    }
    function getcount() public view returns (uint)
    {
        return counter;
    }
    function getadd(uint x,uint y) public returns(uint)
    {
        sum=x+y;
        return sum;
    }
    function getsub(uint x,uint y) public returns(uint)
    {
        sub=x-y;
        return sub;
    }
    function getlocalCalc(uint XX) public pure returns (uint)
    {
        return XX*2;
    }
}
